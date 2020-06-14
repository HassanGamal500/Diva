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

class AppSettingController extends Controller
{
    
    // public function __construct(Request $request){
    //     languageApi($request->language_id);
    // }

    public function apiAuthenticate($consumer_data)
    {
        $settings = $this->getSetting();

        $callExist = DB::table('api_calls_list')
            ->where([
                ['device_id', '=', $consumer_data['consumer_device_id']],
                ['nonce', '=', $consumer_data['consumer_nonce']],
                ['url', '=', $consumer_data['consumer_url']],
            ])
            ->get();
        $ip = $consumer_data['consumer_ip'];
        $device_id = $consumer_data['consumer_device_id'];

        $block_check = DB::table('block_ips')->where('ip', $ip)->orwhere('device_id', $device_id)->first();
        if ($block_check != null) {
            return '0';
        }

        $http_call_record = DB::table('http_call_record')->where('ip', $ip)->orderBy('ping_time', 'desc')->first();
        if ($http_call_record == null) {
            $last_ping_time = Carbon::now();
            $difference_from_previous = 0;
        } else {
            $last_ping_time = $http_call_record->ping_time;
            $difference_from_previous = $http_call_record->difference_from_previous;

        }
        $date = new Carbon(Carbon::now()->toDateTimeString());
        $difference = $date->floatDiffInSeconds($last_ping_time);

        DB::table('http_call_record')
            ->insert([
                'ip' => $ip,
                'device_id' => $device_id,
                'url' => $consumer_data['consumer_url'],
                'ping_time' => Carbon::now(),
                'difference_from_previous' => $difference,
            ]);

        $time_taken = DB::table('http_call_record')->where('url', $consumer_data['consumer_url'])->where('ip', $ip)->take(10)->sum('difference_from_previous');
        $record_count = DB::table('http_call_record')->where('ip', $ip)->count();
        //dd(md5($settings['consumer_key']));
        if(md5($settings['consumer_key']) == md5($consumer_data['consumer_key']) &&
            md5($settings['consumer_secret']) == md5($consumer_data['consumer_secret'])
             && count($callExist)==0){
            DB::table('api_calls_list')
               ->insert([
                     'device_id'=>$consumer_data['consumer_device_id'],
                     'nonce'=>$consumer_data['consumer_nonce'],
                     'url'=>$consumer_data['consumer_url'],
                     'created_at'=>date('Y-m-d h:i:s')
                 ]);
            return '1';
        }else{
            // return '1'; 
            if($record_count >= 1000 && $time_taken <=60 ){
                DB::table('http_call_record')->where('url',$consumer_data['consumer_url'])->where('ip',$ip)->delete();

                DB::table('block_ips')
                    ->insert([
                        'ip' => $ip,
                        'device_id' => $device_id,
                        'created_at' => Carbon::now()
                    ]);
                return '0';
            }else{
                return '0';
            }
        }
    }

    public function getlanguages()
    {
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        $authenticate = $this->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $languages = DB::table('languages')->get();
            $responseData = array('success' => '1', 'languages' => $languages, 'message' => "Returned all languages.");
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
        }

        $categoryResponse = json_encode($responseData);
        print $categoryResponse;
    }
    
    public function setlanguage(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'user_id' => 'required',
            'language_id' => 'required',
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

        $authenticate = $this->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            $set = DB::table('users')
                ->where('id', '=', $request->user_id)
                ->update(['default_language' => $request->language_id]);
    
            
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
    
    public function alertMe(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'customers_id' => 'required',
            'category_id' => 'required|unique:alert_categories,category_id,Null,'.$request->category_id.',customers_id,'.$request->customers_id,
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

        $authenticate = $this->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            $set = DB::table('alert_categories')
                ->insert([
                    'category_id' => $request->category_id,
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

        $authenticate = $this->apiAuthenticate($consumer_data);

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

        $authenticate = $this->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            $set = DB::table('alert_categories')
                ->where('category_id', '=', $request->category_id)
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

    public function getnotifications(Request $request)
    {
        $validator = validator()->make($request->all(), [
            'user_id' => 'required',
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

        $authenticate = $this->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $array = array();
            $notifications = DB::table('notifications')
                ->join('notification_description', 'notification_description.notification_id', '=', 'notifications.notification_id')
                ->where('user_id', '=', $request->user_id)
                // ->orwhere('user_id', '=', 0)
                // ->where('type_id', '=', $request->service_id)
                ->where('language_id', '=', $request->language_id)
                ->select('notification_name','notification_content', 'notification_image', 'notifications.created_at')
                ->orderBy('notifications.notification_id', 'desc')
                ->get();
    
            if (!empty($notifications)){
                $response = [
                    'status' => 1,
                    'message' => trans('labels.Success'),
                    'data' => $notifications
                ];
            } else {
                $response = [
                    'status' => 1,
                    'message' => trans('labels.Success'),
                    'data' => []
                ];
            }
    
            $categoryResponse = json_encode($response);
            print $categoryResponse;
    
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
            $categoryResponse = json_encode($responseData);
            print $categoryResponse;
        }

        
	}

    public function getcurrencies()
    {
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        $authenticate = $this->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $currencies = DB::table('currencies')->where('status',1)->where('is_current',1)->get();
            $responseData = array('success' => '1', 'data' => $currencies, 'message' => "Returned all currencies.");
        } else {
            $responseData = array('success' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }

        $categoryResponse = json_encode($responseData);
        print $categoryResponse;
	}

    public function getSetting()
    {
        $setting = DB::table('settings')->get();
        $result = array();
        foreach ($setting as $settings) {
            $name = $settings->name;
            $value = $settings->value;
            $result[$name] = $value;
        }
        return $result;
    }

    public function sitesetting()
    {
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        $authenticate = $this->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $settings = $this->getSetting();
            $responseData = array('success' => '1', 'data' => $settings, 'message' => "Returned all site data.");
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        print $categoryResponse;
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

        $authenticate = $this->apiAuthenticate($consumer_data);

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

    public function applabels(Request $request)
    {
        $language_id = $request->lang;
        $labels = DB::table('labels')
            ->leftJoin('label_value', 'label_value.label_id', '=', 'labels.label_id')
            ->where('language_id', '=', $language_id)
            ->get();

        $result = array();
        foreach ($labels as $labels_data) {
            $result[$labels_data->label_name] = $labels_data->label_value;
        }

        $responseData = array('success' => '1', 'labels' => $result, 'message' => "Returned all site labels.");
        $categoryResponse = json_encode($responseData);
        print $categoryResponse;

    }

    public function applabels3(Request $request)
    {

        $language_id = $request->lang;

        $labels = DB::table('labels')
            ->leftJoin('label_value', 'label_value.label_id', '=', 'labels.label_id')
            ->where('language_id', '=', $language_id)
            ->get();

        $result = array();
        foreach ($labels as $labels_data) {
            $result[$labels_data->label_name] = $labels_data->label_value;
        }

        $categoryResponse = json_encode($result);
        print $categoryResponse;
    }

    public function getlocation(Request $request)
    {
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        $authenticate = $this->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $address = urlencode($request->address);
            $settings = $this->getSetting();

            $data = file_get_contents('https://maps.googleapis.com/maps/api/geocode/json?key=' . $settings['google_map_api'] . '&address=' . $address);
            $data = json_decode($data);
            $responseData = array('success' => '1', 'data' => $data, 'message' => "Current location is returned successfully.");
        } else {
            $responseData = array('success' => '0', 'languages' => array(), 'message' => "Unauthenticated call.");

        }

        $response = json_encode($responseData);
        print $response;
    }

    public function uploadimage(Request $request)
    {
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        $authenticate = $this->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            if ($request->user_id) {
                $user_id = $request->user_id;
            } else {
                $user_id = 0;
            }

            // Creating a new time instance, we'll use it to name our file and declare the path
            $time = Carbon::now();
            // Requesting the file from the form
            $image = $request->file('file');
            $extensions = Setting::imageType();
            if ($request->hasFile('file') and in_array($request->file->extension(), $extensions)) {

                // getting size
                $size = getimagesize($image);
                list($width, $height, $type, $attr) = $size;
                // Getting the extension of the file
                $extension = $image->getClientOriginalExtension();

                // Creating the directory, for example, if the date = 18/10/2017, the directory will be 2017/10/
                $directory = date_format($time, 'Y') . '/' . date_format($time, 'm');
                // Creating the file name: random string followed by the day, random number and the hour
                $filename = str_random(5) . date_format($time, 'd') . rand(1, 9) . date_format($time, 'h') . "." . $extension;
                // This is our upload main function, storing the image in the storage that named 'public'
                $upload_success = $image->storeAs($directory, $filename, 'public');

                //store DB
                $Path = 'images/media/' . $directory . '/' . $filename;
                $Images = new Images();
                $image_id = $Images->imagedata($filename, $Path, $width, $height, $user_id);
                $AllImagesSettingData = $Images->AllimagesHeightWidth();

                $mediaController = new MediaController();

                switch (true) {
                    case ($width >= $AllImagesSettingData[5]->value || $height >= $AllImagesSettingData[4]->value):
                        $tuhmbnail = $mediaController->storeThumbnial($Path, $filename, $directory, $filename);
                        $mediumimage = $mediaController->storeMedium($Path, $filename, $directory, $filename);
                        $largeimage = $mediaController->storeLarge($Path, $filename, $directory, $filename);
                        break;
                    case ($width >= $AllImagesSettingData[3]->value || $height >= $AllImagesSettingData[2]->value):
                        $tuhmbnail = $mediaController->storeThumbnial($Path, $filename, $directory, $filename);
                        $mediumimage = $mediaController->storeMedium($Path, $filename, $directory, $filename);
                        //                $storeLargeImage = $this->Images->Largerecord($filename,$Path,$width,$height);
                        break;
                    case ($width >= $AllImagesSettingData[0]->value || $height >= $AllImagesSettingData[1]->value):
                        $tuhmbnail = $mediaController->storeThumbnial($Path, $filename, $directory, $filename);

                        break;
                }
                $returnimages = DB::table('image_categories')->where('image_id', $image_id)->get();

                //$uploaded_image = DB::table()-where()
                $responseData = array('success' => '1', 'data' => $returnimages, 'message' => "image is uploaded successfully.");
            } else {
                $responseData = array('success' => '0', 'data' => array(), 'message' => "Please upload a valid image.");
            }
        } else {
            $responseData = array('success' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }

        $categoryResponse = json_encode($responseData);
        print $categoryResponse;
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

        $authenticate = $this->apiAuthenticate($consumer_data);

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

        $authenticate = $this->apiAuthenticate($consumer_data);

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

        $authenticate = $this->apiAuthenticate($consumer_data);

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

        $authenticate = $this->apiAuthenticate($consumer_data);

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
