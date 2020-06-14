<?php

namespace App\Http\Controllers\App;

use App\Http\Controllers\AdminControllers\MediaController;
use App\Models\Core\Images;
use App\Models\Core\Setting;
use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Lang;
use Mail;

class AppController extends Controller
{
    
    public function __construct(Request $request){
        languageApi($request->language_id);
    }
    
    public function alertMe(Request $request)
    {
        $messages = [
            'categories_id.unique' => trans('labels.category has already been added'),     
        ];
        
        $validator = validator()->make($request->all(), [
            'customers_id' => 'required',
            'categories_id' => 'required|unique:alert_categories,category_id,Null,'.$request->category_id.',customers_id,'.$request->customers_id,
            'language_id' => 'required'
        ], $messages);

        if ($validator->fails()){
            $response = [
                'status' => 1,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }
        
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        // $authenticate = $this->apiAuthenticate($consumer_data);
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            $set = DB::table('alert_categories')
                ->insert([
                    'category_id' => $request->categories_id,
                    'customers_id' => $request->customers_id
                ]);
            
            $response = [
                'status' => 1,
                'message' => trans('labels.Success'),
                'data' => $set
            ];
    
            $categoryResponse = json_encode($response);
            print $categoryResponse;
    
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
            $categoryResponse = json_encode($responseData);
            print $categoryResponse;
        }

        
    }
    
    public function myAlert(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'customers_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()){
            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        // $authenticate = $this->apiAuthenticate($consumer_data);
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            $alerts = DB::table('alert_categories')->where('customers_id', '=', $request->customers_id)->select('alert_id', 'category_id')->get();
            foreach($alerts as $alert){
                $set = DB::table('categories')
                ->LeftJoin('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
                ->where('categories.categories_id', '=', $alert->category_id)
                ->select('categories.categories_id', 'categories_name')
                ->where('language_id', '=', $request->language_id)
                ->first();
                // dd($set);
                $alert->category_name = $set->categories_name;
            }
            
            $response = [
                'status' => 1,
                'message' => trans('labels.Success'),
                'data' => $alerts
            ];
    
            $categoryResponse = json_encode($response);
            print $categoryResponse;
    
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
            $categoryResponse = json_encode($responseData);
            print $categoryResponse;
        }

        
	}

    public function deleteAlert(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'customers_id' => 'required',
            'categories_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()){
            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        // $authenticate = $this->apiAuthenticate($consumer_data);
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            $set = DB::table('alert_categories')
                ->where('category_id', '=', $request->categories_id)
                ->where('customers_id', '=', $request->customers_id)
                ->delete();
            
            $response = [
                'status' => 1,
                'message' => trans('labels.Success'),
                'data' => $set
            ];
    
            $categoryResponse = json_encode($response);
            print $categoryResponse;
    
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
            $categoryResponse = json_encode($responseData);
            print $categoryResponse;
        }
        
    }

    public function contactus(Request $request)
    {

        $validator= validator()->make($request->all(),[
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
            'type' => 'required',
            'message' => 'required',
            'subject' => 'required',
        ]);
        
        if ($validator->fails()){
            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $name = $request->name;
        $email = $request->email;
        $phone = $request->phone;
        $type = $request->type;
        $subject = $request->subject;
        $message = $request->message;
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            if (filter_var(filter_var(strtolower($request->email), FILTER_SANITIZE_EMAIL), FILTER_VALIDATE_EMAIL) 
            && preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", strtolower($request->email)) 
            && preg_match("/[\p{Arabic}A-Za-z]/u", $request->name) 
            && !preg_match("/[0-9]/u", $request->name)) {
                // $setting = $this->getSetting();
                $data = array('contact_name' => $name, 'contact_email' => $email, 'contact_phone' => $phone, 'contact_type' => $type, 'contact_subject' => $subject, 'contact_message' => $message, 'contact_from' => 1);
                $insertContact = DB::table('contacts')->insert($data);
                $responseData = array('success' => '1', 'data' => array(), 'message' => "Message has been sent successfully!");
                $categoryResponse = json_encode($responseData);
                print $categoryResponse;

                // Mail::send('/mail/contactUs', ['data' => $data], function ($m) use ($data) {
                //     $m->to($data['adminEmail'])->subject(Lang::get("labels.contactUsTitle"))->getSwiftMessage()
                //         ->getHeaders()
                //         ->addTextHeader('x-mailgun-native-send', 'true');
                // });
            } else {
                if(!preg_match("/[\p{Arabic}A-Za-z]/u", $request->name) || preg_match("/[0-9]/u", $request->name)) {
                    // $error = trans('admin.this name must contain only characters');
                    $response = [
                        'status' => 0,
                        'message' => trans('labels.this name must contain only characters'),
                        'data' => []
                    ];
                    $categoryResponse = json_encode($response);
                    print $categoryResponse;
                } else {
                    // $error = trans('admin.your email is not correct');
                    $response = [
                        'status' => 0,
                        'message' => trans('labels.your email is not correct'),
                        'data' => []
                    ];
                    $categoryResponse = json_encode($response);
                    print $categoryResponse;
                }
            }

        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
            $categoryResponse = json_encode($responseData);
            print $categoryResponse;
        }
    }
    
    public function mainCategories(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'language_id' => 'required'
        ]);

        if ($validator->fails()){
            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        // $authenticate = $this->apiAuthenticate($consumer_data);
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            $set = DB::table('categories')
                ->LeftJoin('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
                ->where('categories.parent_id', '=', 0)
                ->select('categories.categories_id', 'categories_name')
                ->where('language_id', '=', $request->language_id)
                ->get();
                
            $response = [
                'status' => 1,
                'message' => trans('labels.Success'),
                'data' => $set
            ];
    
            $categoryResponse = json_encode($response);
            print $categoryResponse;
    
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
            $categoryResponse = json_encode($responseData);
            print $categoryResponse;
        }

        
	}
	
	public function subCategories(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'category_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()){
            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        // $authenticate = $this->apiAuthenticate($consumer_data);
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            
            $set = DB::table('categories')
            ->LeftJoin('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
            ->where('categories.parent_id', '=', $request->category_id)
            ->select('categories.categories_id', 'categories_name')
            ->where('language_id', '=', $request->language_id)
            ->get();
            
            
            $response = [
                'status' => 1,
                'message' => trans('labels.Success'),
                'data' => $set
            ];
    
            $categoryResponse = json_encode($response);
            print $categoryResponse;
    
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
            $categoryResponse = json_encode($responseData);
            print $categoryResponse;
        }

        
	}
	
	public function listOfBrands(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'language_id' => 'required'
        ]);

        if ($validator->fails()){
            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        // $authenticate = $this->apiAuthenticate($consumer_data);
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            
            $sets = DB::table('brands')
            ->LeftJoin('brand_description', 'brand_description.brand_id', '=', 'brands.brand_id')
            ->where('brands.status', '=', 1)
            ->select('brands.brand_id', 'brand_name')
            ->where('language_id', '=', $request->language_id)
            ->get();
            
            if($request->language_id == 1){
                $otherLang = 'Other';
            } else {
                $otherLang = 'اخرى';
            }
            
            $other = array('brand_id' => 0, 'brand_name' => $otherLang);
            $sets[] = $other;
            
            $response = [
                'status' => 1,
                'message' => trans('labels.Success'),
                'data' => $sets
            ];
    
            $categoryResponse = json_encode($response);
            print $categoryResponse;
    
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
            $categoryResponse = json_encode($responseData);
            print $categoryResponse;
        }

        
	}
	
	public function listOfDesigners(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'language_id' => 'required'
        ]);

        if ($validator->fails()){
            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        // $authenticate = $this->apiAuthenticate($consumer_data);
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            
            $sets = DB::table('designers')
            ->LeftJoin('designer_description', 'designer_description.designer_id', '=', 'designers.designer_id')
            ->where('designers.status', '=', 1)
            ->select('designers.designer_id', 'designer_name')
            ->where('language_id', '=', $request->language_id)
            ->get();
            
            if($request->language_id == 1){
                $otherLang = 'Other';
            } else {
                $otherLang = 'اخرى';
            }
            
            $other = array('designer_id' => 0, 'designer_name' => $otherLang);
            $sets[] = $other;
            
            $response = [
                'status' => 1,
                'message' => trans('labels.Success'),
                'data' => $sets
            ];
    
            $categoryResponse = json_encode($response);
            print $categoryResponse;
    
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
            $categoryResponse = json_encode($responseData);
            print $categoryResponse;
        }

        
	}

}
