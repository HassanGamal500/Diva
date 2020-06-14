<?php
namespace App\Http\Controllers\AdminControllers;

use App\Models\Core\Customers;
use App\Models\Core\Images;
use App\Models\Core\Setting;
use App\Models\Core\Languages;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Exception;
use Kyslik\ColumnSortable\Sortable;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class CustomersController extends Controller
{
    //
    public function __construct(Customers $customers, Setting $setting)
    {
        $this->Customers = $customers;
        $this->myVarsetting = new SiteSettingController($setting);
    }

    public function display()
    {
        $title = array('pageTitle' => Lang::get("labels.ListingCustomers"));
        $language_id = language();

        $customers = $this->Customers->paginator();

        $result = array();
        $index = 0;
        foreach($customers as $customers_data){
            array_push($result, $customers_data);

            $devices = DB::table('devices')->where('user_id','=',$customers_data->id)->orderBy('created_at','DESC')->take(1)->get();
            $result[$index]->devices = $devices;
            // Number Of Orders 
            $orders = DB::table('orders')->where('customers_id', '=', $customers_data->id)->count();
            $result[$index]->numOfOrders = $orders;

            $index++;
        }

        

        $customerData = array();
        $message = array();
        $errorMessage = array();

        $customerData['message'] = $message;
        $customerData['errorMessage'] = $errorMessage;
        $customerData['result'] = $customers;
        $customerData['currency'] = DB::table('currencies')->where('id', '=', 2)->first();
        return view("admin.customers.index", $title)->with('customers', $customerData);
    }

    public function add(Request $request)
    {
        $title = array('pageTitle' => Lang::get("labels.AddCustomer"));
        $images = new Images;
        $allimage = $images->getimages();
        $language_id = language();
        $customerData = array();
        $message = array();
        $errorMessage = array();
        $customerData['countries'] = $this->Customers->countries();
        $customerData['message'] = $message;
        $customerData['errorMessage'] = $errorMessage;
        return view("admin.customers.add", $title)->with('customers', $customerData)->with('allimage',$allimage);
    }


    //add addcustomers data and redirect to address
    public function insert(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'customers_firstname' => 'required',
            'customers_lastname' => 'required',
            'customers_gender' => 'required',
            'customers_telephone' => 'required|unique:users,phone',
            'email' => 'required|unique:users|email',
            'password' => 'required|min:8|regex:/^(?=.*?[a-z])(?=.*?[0-9])/',
            'customer_image' => 'required|image|mimes:jpeg,png,jpg,bmp,gif,svg',
            'isActive' => 'required',
        ]);

        if ($validator->fails()) {
            $error = $validator->errors()->first();
            return Redirect::back()->withInput($request->all())->withErrors($error);
        }

        if (filter_var(filter_var(strtolower($request->email), FILTER_SANITIZE_EMAIL), FILTER_VALIDATE_EMAIL) 
        && preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", strtolower($request->email)) 
        && preg_match("/[\p{Arabic}A-Za-z]/u", $request->customers_firstname) && preg_match("/[\p{Arabic}A-Za-z]/u", $request->customers_lastname)
        && !preg_match("/[0-9]/u", $request->customers_firstname) && !preg_match("/[0-9]/u", $request->customers_lastname)) {
            $language_id = language();
            $customerData = array();
            $message = array();
            $errorMessage = array();

            //check email already exists
            $existEmail = $this->Customers->email($request);

            if (count($existEmail)> 0 ) {
                $messages = Lang::get("labels.Email address already exist");
                return Redirect::back()->withErrors($messages)->withInput($request->all());
            } else {
                $customers_id = $this->Customers->insert($request);
                return redirect('admin/customers/address/display/' . $customers_id)->with('update', trans('labels.Customer has been created successfully!'));
            }
        } else {
            if(!preg_match("/[\p{Arabic}A-Za-z]/u", $request->customers_firstname) || preg_match("/[0-9]/u", $request->customers_firstname) || !preg_match("/[\p{Arabic}A-Za-z]/u", $request->customers_lastname) || preg_match("/[0-9]/u", $request->customers_lastname)) {
                $error = trans('labels.first name or last name must contain only characters');
                return Redirect::back()->withInput($request->all())->withErrors($error);
            } else {
                $error = trans('labels.your email is not correct');
                return Redirect::back()->withInput($request->all())->withErrors($error);
            }
        }
    }

    public function diplayaddress(Request $request){

        $title = array('pageTitle' => Lang::get("labels.AddAddress"));

        $language_id   				=   $request->language_id;
        $id            				=   $request->id;

        $customerData = array();
        $message = array();
        $errorMessage = array();

        $customer_addresses = $this->Customers->addresses($id);
        $countries = $this->Customers->country();

        $customerData['message'] = $message;
        $customerData['errorMessage'] = $errorMessage;
        $customerData['customer_addresses'] = $customer_addresses;
        $customerData['countries'] = $countries;
        $customerData['user_id'] = $id;

        return view("admin.customers.address.index",$title)->with('data', $customerData);
    }


    //add Customer address
    public function addcustomeraddress(Request $request){
      $customer_addresses = $this->Customers->addcustomeraddress($request);
      return $customer_addresses;
    }

    public function editaddress(Request $request){

      $user_id                 =   $request->user_id;
      $address_book_id         =   $request->address_book_id;

      $customer_addresses = $this->Customers->addressBook($address_book_id);
      $countries = $this->Customers->countries();;
      $zones = $this->Customers->zones($customer_addresses);
      $customers = $this->Customers->checkdefualtaddress($address_book_id);

      $customerData['user_id'] = $user_id;
      $customerData['customer_addresses'] = $customer_addresses;
      $customerData['countries'] = $countries;
      $customerData['zones'] = $zones;
      $customerData['customers'] = $customers;

      return view("admin/customers/address/editaddress")->with('data', $customerData);
    }

    //update Customers address
    public function updateaddress(Request $request){
      $customer_addresses = $this->Customers->updateaddress($request);
      return ($customer_addresses);
    }

    public function deleteAddress(Request $request){
      $customer_addresses = $this->Customers->deleteAddresses($request);
      return redirect()->back()->withErrors([Lang::get("labels.Delete Address Text")]);
    }

    //editcustomers data and redirect to address
    public function edit(Request $request){

      $images           = new Images;
      $allimage         = $images->getimages();
      $title            = array('pageTitle' => Lang::get("labels.EditCustomer"));
      $language_id      =   language();
      $id               =   $request->id;

      $customerData = array();
      $message = array();
      $errorMessage = array();
      $customers = $this->Customers->edit($id);

      $customerData['message'] = $message;
      $customerData['errorMessage'] = $errorMessage;
      $customerData['countries'] = $this->Customers->countries();
      $customerData['customers'] = $customers;

      return view("admin.customers.edit",$title)->with('data', $customerData)->with('allimage', $allimage);
    }

    //add addcustomers data and redirect to address
    public function update(Request $request){
        $validator = validator()->make($request->all(), [
            'first_name' => 'required',
            'last_name' => 'required',
            'gender' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
            'password' => 'nullable|min:8|regex:/^(?=.*?[a-z])(?=.*?[0-9])/',
            'customer_image' => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg',
            'status' => 'nullable',
        ]);

        if ($validator->fails()) {
            $error = $validator->errors()->first();
            return Redirect::back()->withInput($request->all())->withErrors($error);
        }

        if (filter_var(filter_var(strtolower($request->email), FILTER_SANITIZE_EMAIL), FILTER_VALIDATE_EMAIL) 
        && preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", strtolower($request->email)) 
        && preg_match("/[\p{Arabic}A-Za-z]/u", $request->first_name) && preg_match("/[\p{Arabic}A-Za-z]/u", $request->last_name)
        && !preg_match("/[0-9]/u", $request->first_name) && !preg_match("/[0-9]/u", $request->last_name)) {

            $language_id  =   language();
            $user_id    =	$request->customers_id;

            $getUser = DB::table('users')->where('id', '=', $user_id)->first();
            $allPhone = DB::table('users')->where('phone', convert($request->phone))->where('id', '!=', $user_id)->first();
            $allEmail = DB::table('users')->where('email', $request->email)->where('id', '!=', $user_id)->first();

            $customerData = array();
            $message = array();
            $errorMessage = array();

            if ($allPhone) {
                $error = trans('labels.This phone has been taken before');
                return Redirect::back()->withInput($request->all())->withErrors($error);
                // dd($allPhone);
            }

            // if ($allEmail) {
            //     $error = trans('labels.This Email has been taken before');
            //     return Redirect::back()->withInput($request->all())->withErrors($error);
            // }

            if ($request->hasFile('customer_image')) {
                $myFile = public_path('images/'.$getUser->image);
                // dd($myFile);
                File::delete($myFile);
                $customer_image = Storage::disk('edit_path')->putFile('images/users', $request->file('customer_image'));
            } else {
                $customer_image = $request->oldImage;
            }

            $user_data = array(
                'gender'   		 	=>  $request->gender,
                'first_name'		=>  $request->first_name,
                'last_name'		 	=>  $request->last_name,
                'email'	 		    =>  $request->email,
                'phone'	 	        =>	$request->phone,
                'status'		    =>  $request->status,
                'avatar'	 		=>	'',
                'updated_at'        =>  date('Y-m-d H:i:s'),
                'image'             =>  $customer_image,
                'wallet'            =>  $request->wallet
            );
            $customer_data = array(
            'customers_newsletter'   		 	=>   0,
            'updated_at'    => date('Y-m-d H:i:s'),
            );


            if($request->changePassword == 'yes'){
                $user_data['password'] = Hash::make($request->password);
            }

            //check email already exists
            if($request->old_email_address!=$request->email){
                $existEmail = $this->Customers->extendemail($request);
                if(count($existEmail)>0){
                    $messages = Lang::get("labels.Email address already exist");
                    return Redirect::back()->withErrors($messages)->withInput($request->all());
                }else{
                $this->Customers->updaterecord($customer_data,$user_id,$user_data);
                return redirect('admin/customers/address/display/'.$user_id);
                }
            }else{
                $this->Customers->updaterecord($customer_data,$user_id,$user_data);
                return redirect('admin/customers/address/display/'.$user_id);
            }
        } else {
            if(!preg_match("/[\p{Arabic}A-Za-z]/u", $request->first_name) || preg_match("/[0-9]/u", $request->first_name) || !preg_match("/[\p{Arabic}A-Za-z]/u", $request->last_name) || preg_match("/[0-9]/u", $request->last_name)) {
                $error = trans('labels.first name or last name must contain only characters');
                return Redirect::back()->withInput($request->all())->withErrors($error);
            } else {
                $error = trans('labels.your email is not correct');
                return Redirect::back()->withInput($request->all())->withErrors($error);
            }
        }
        
        
    }

    public function delete(Request $request){
        $getUser = DB::table('users')->where('id', '=', $request->users_id)->first();
        $myFile = public_path('images/'.$getUser->image);
        File::delete($myFile);
        $this->Customers->destroyrecord($request->users_id);
        return redirect()->back()->withErrors([Lang::get("labels.DeleteCustomerMessage")]);
    }

    public function filter(Request $request){
      $filter    = $request->FilterBy;
      $parameter = $request->parameter;

      $title = array('pageTitle' => Lang::get("labels.ListingCustomers"));
      $customers  = $this->Customers->filter($request);

      $result = array();
      $index = 0;
      foreach($customers as $customers_data){
          array_push($result, $customers_data);

          $devices = DB::table('devices')->where('user_id','=',$customers_data->id)->orderBy('created_at','DESC')->take(1)->get();
          $result[$index]->devices = $devices;
          $index++;
      }

      $customerData = array();
      $message = array();
      $errorMessage = array();

      $customerData['message'] = $message;
      $customerData['errorMessage'] = $errorMessage;
      $customerData['result'] = $customers;

      return view("admin.customers.index",$title)->with('customers', $customerData)->with('filter',$filter)->with('parameter',$parameter);
    }

    public function seller()
    {
        $title = array('pageTitle' => Lang::get("labels.ListingCustomers"));
        $language_id = language();

        $customers = DB::table('users')
            ->where('role_id', '=', null)
            ->join('customer_seller', 'customer_seller.user_id', '=', 'users.id')
            ->where('is_request', '=', 1)
            ->paginate(10);

        $result = array();
        $index = 0;
        foreach($customers as $customers_data){
            array_push($result, $customers_data);       
            $index++;
        }

        

        $customerData = array();
        $message = array();
        $errorMessage = array();

        $customerData['message'] = $message;
        $customerData['errorMessage'] = $errorMessage;
        $customerData['result'] = $customers;
        return view("admin.customers.seller.index", $title)->with('customers', $customerData);
    }

    public function changeSeller(Request $request){
        $user = DB::table('users')->where('id', '=', $request->id)->update(['is_seller' => $request->status]);
    }
}
