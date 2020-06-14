<?php

namespace App\Models\AppModels;

use App\Http\Controllers\App\AlertController;
use App\Http\Controllers\App\AppSettingController;
use Auth;
use DB;
use File;
use Hash;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Customer extends Model
{
    public function __construct(Request $request){
        languageApi($request->language_id);
    }

    public static function processlogin($request)
    {
        $validator = validator()->make($request->all(), [
            'phone' => 'required|max:13',
            'password' => 'required|min:8|max:32',
        ]);

        if ($validator->fails()){
            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
            // return response()->json($response);
        }

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

            $phone = $request->phone;
            $password = $request->password;

            $customerInfo = array("phone" => $phone, "password" => $password);
            if (Auth::attempt($customerInfo)) {

                $existUser = DB::table('users')->where('phone', $phone)->where('status', '1')->get();

                if (count($existUser) > 0) {

                    $customers_id = $existUser[0]->id;

                    //update record of customers_info
                    $existUserInfo = DB::table('customers_info')->where('customers_info_id', $customers_id)->get();
                    $customers_info_id = $customers_id;
                    $customers_info_date_of_last_logon = date('Y-m-d H:i:s');
                    $customers_info_number_of_logons = '1';
                    $customers_info_date_account_created = date('Y-m-d H:i:s');
                    $global_product_notifications = '1';

                    if (count($existUserInfo) > 0) {
                        //update customers_info table
                        DB::table('customers_info')->where('customers_info_id', $customers_info_id)->update([
                            'customers_info_date_of_last_logon' => $customers_info_date_of_last_logon,
                            'global_product_notifications' => $global_product_notifications,
                            'customers_info_number_of_logons' => DB::raw('customers_info_number_of_logons + 1'),
                        ]);

                    } else {
                        //insert customers_info table
                        $customers_default_address_id = DB::table('customers_info')->insertGetId(
                            ['customers_info_id' => $customers_info_id,
                                'customers_info_date_of_last_logon' => $customers_info_date_of_last_logon,
                                'customers_info_number_of_logons' => $customers_info_number_of_logons,
                                'customers_info_date_account_created' => $customers_info_date_account_created,
                                'global_product_notifications' => $global_product_notifications,
                            ]
                        );

                        DB::table('users')->where('id', $customers_id)->update([
                            'default_address_id' => $customers_default_address_id,
                        ]);
                    }

                    //check if already login or not
                    $already_login = DB::table('whos_online')->where('customer_id', '=', $customers_id)->get();

                    if (count($already_login) > 0) {
                        DB::table('whos_online')
                            ->where('customer_id', $customers_id)
                            ->update([
                                'full_name' => $existUser[0]->first_name . ' ' . $existUser[0]->last_name,
                                'time_entry' => date('Y-m-d H:i:s'),
                            ]);
                    } else {
                        DB::table('whos_online')
                            ->insert([
                                'full_name' => $existUser[0]->first_name . ' ' . $existUser[0]->last_name,
                                'time_entry' => date('Y-m-d H:i:s'),
                                'customer_id' => $customers_id,
                            ]);
                    }

                    //get liked products id
                    $products = DB::table('liked_products')->select('liked_products_id as products_id')
                        ->where('liked_customers_id', '=', $customers_id)
                        ->get();

                    if (count($products) > 0) {
                        $liked_products = $products;
                    } else {
                        $liked_products = array();
                    }

                    $existUser[0]->liked_products = $products;

                    $responseData = array('status' => '1', 'data' => $existUser, 'message' => trans('labels.Success'));

                } else {
                    $responseData = array('status' => '0', 'data' => array(), 'message' => trans('labels.Your account has been deactivated.'));

                }
            } else {
                $existUser = array();
                $responseData = array('status' => '0', 'data' => array(), 'message' => trans('labels.Invalid phone or password.'));

            }
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }

    public static function processregistration($request)
    {
        $messages = [
            'password.regex' => trans('labels.Password must contain letters, numbers and symbols'),     
        ];
  
        $validator = validator()->make($request->all(), [
            'first_name' => 'required|max:30',
            'last_name' => 'required|max:30',
            'email' => 'required|email|unique:users',
            'phone' => 'required|max:13|unique:users',
            'password' => 'required|min:8|max:32|regex:/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])/',
            'gender' => 'required',
            'invite_code' => 'nullable'
        ], $messages);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        // $customers_firstname = $request->first_name;
        // $customers_lastname = $request->last_name;
        // $email = $request->email;
        // $password = $request->password;
        $customers_telephone = $request->phone;
        // $gender = $request->gender;
        // $invite = $request->invite_code;
        // $customers_info_date_account_created = date('y-m-d h:i:s');
        // dd($request->all());
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        // $extensions = array('gif', 'jpg', 'jpeg', 'png');

        if ($authenticate == 1) {

            // //check email existance
            // $existEmail = DB::table('users')->where('email', $email)->get();
            // //check Phone existance
            // $existEmail = DB::table('users')->where('email', $email)->get();

            // if (count($existEmail) == "1") {
            //     //response if email already exit
            //     $postData = array();
            //     $responseData = array('success' => '0', 'data' => $postData, 'message' => "Email address is already exist");
            // } else {

                //insert data into customer
                // $customers_id = DB::table('users')->insertGetId([
                //     // 'role_id' => 2,
                //     'first_name' => $customers_firstname,
                //     'last_name' => $customers_lastname,
                //     'phone' => $customers_telephone,
                //     'email' => $email,
                //     'gender' => $gender,
                //     'password' => Hash::make($password),
                //     'status' => '0',
                //     'invite_code' => $invite,
                //     'created_at' => date('y-m-d h:i:s'),
                // ]);

                $code = rand(1111, 9999);
        
                $verify = DB::table('verification')->where('phone', '=', $customers_telephone)->count();
                if($verify > 0) {
                    $verification = DB::table('verification')->where('phone', '=', $customers_telephone)->update(['pin_code' => $code, 'is_used' => 0]);
                } else {
                    $verification = DB::table('verification')->insert(['pin_code' => $code, 'is_used' => 0, 'phone' => $customers_telephone]);
                }

                // $userData = DB::table('users')->where('users.id', '=', $customers_id)->where('status', '1')->get();
                $verificationCode = ['verf_code' => $code];

                $responseData = array('status' => '1', 'data' => $verificationCode, 'message' => trans('labels.check verification code in your message'));
            // }

        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);
        print $userResponse;
    }

    public static function verificationCode($request)
    {
        $messages = [
            'password.regex' => trans('labels.Password must contain letters, numbers and symbols'),     
        ];
        
        $validator = validator()->make($request->all(), [
            'verification_code' => 'required',
            'first_name' => 'required|max:30',
            'last_name' => 'required|max:30',
            'email' => 'required|email|unique:users',
            'phone' => 'required|max:13|unique:users',
            'password' => 'required|min:8|max:32|regex:/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])/',
            'gender' => 'required',
            'invite_code' => 'nullable'
        ], $messages);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $customers_firstname = $request->first_name;
        $customers_lastname = $request->last_name;
        $email = $request->email;
        $password = $request->password;
        $customers_telephone = $request->phone;
        $gender = $request->gender;
        $invite = $request->invite_code;
        $customers_info_date_account_created = date('y-m-d h:i:s');
        // dd($request->all());
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        // $extensions = array('gif', 'jpg', 'jpeg', 'png');

        if ($authenticate == 1) {

            $user = DB::table('verification')->where('pin_code', $request->verification_code)
            ->where('phone', $request->phone)
            ->where('is_used', '=', 0)
            ->count();

            if ($user > 0){
                //insert data into customer
                $customers_id = DB::table('users')->insertGetId([
                    // 'role_id' => 2,
                    'first_name' => $customers_firstname,
                    'last_name' => $customers_lastname,
                    'phone' => $customers_telephone,
                    'email' => $email,
                    'gender' => $gender,
                    'password' => Hash::make($password),
                    'status' => '1',
                    'invite_code' => $invite,
                    'image' => 'images/users/user.png',
                    'created_at' => date('y-m-d h:i:s'),
                ]);

                $update = DB::table('verification')->where('phone', '=', $request->phone)->update(['is_used' => 1]);

                $userData = DB::table('users')->where('users.id', '=', $customers_id)->where('status', '1')->get();

                $responseData = array('status' => '1', 'data' => $userData, 'message' => trans('labels.Success'));
            } else {
                $responseData = array('status' => '0', 'data' => array(), 'message' => trans('labels.This code is invalid'));
            }

        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);
        print $userResponse;
    }

    public static function processforgotpassword($request)
    {
        $validator = validator()->make($request->all(), [
            'phone' => 'required|max:13|exists:users',
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $phone = $request->phone;
        $postData = array();

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

            //check email exist
            $existUser = DB::table('users')->where('phone', $phone)->get();

            if (count($existUser) > 0) {
                $code = rand(1111, 9999);
                $verify = DB::table('verification')->where('phone', '=', $request->phone)->count();
                if($verify > 0) {
                    $update = DB::table('verification')->where('phone', '=', $request->phone)->update(['pin_code' => $code, 'is_used' => 0]);
                } else {
                    $update = DB::table('verification')->insert(['pin_code' => $code, 'is_used' => 0, 'phone' => $request->phone]);
                }
                
                // if ($update) {
                //     // $to_name = $user->name;
                //     // $to_email = $user->email;
                //     // $data = array('name'=> $user->name, "body" => "Your Reset Code Is :".$code);

                //     // Mail::send('email.mail', $data, function($message) use ($to_name, $to_email) {
                //     //     $message->to($to_email, $to_name)
                //     //         ->subject('Reset Password');
                //     //     $message->from('info@diva.com','Diva');
                //     // });

                //     return response()->json(1);

                // } else {
                //     return response()->json(0);
                // }

                // $password = substr(md5(uniqid(mt_rand(), true)), 0, 8);

                // DB::table('users')->where('phone', $phone)->update([
                //     'password' => Hash::make($password),
                // ]);

                // $existUser[0]->password = $password;

                // $myVar = new AlertController();
                // $alertSetting = $myVar->forgotPasswordAlert($existUser);
                $verificationCode = ['verf_code' => $code];
                $responseData = array('status' => '1', 'data' => $verificationCode, 'message' => trans('labels.check verification code in your message'));
            } else {
                $responseData = array('status' => '0', 'data' => $postData, 'message' => trans('labels.Email address doesn\'t exist!'));
            }
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }
    
     public static function verificationCodeForPassword($request)
    {
        $validator = validator()->make($request->all(), [
            'phone' => 'required|max:13|exists:users,phone',
            'verification_code' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $customers_telephone = $request->phone;
        $customers_info_date_account_created = date('y-m-d h:i:s');
        // dd($request->all());
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

            $user = DB::table('verification')->where('pin_code', $request->verification_code)
            ->where('phone', $request->phone)
            ->where('is_used', '=', 0)
            ->count();

            if ($user > 0){
                $update = DB::table('verification')->where('phone', '=', $request->phone)->update(['is_used' => 1]);
                
                // $customers_id = DB::table('users')->where('phone', '=', $request->phone)->first();

                // $userData = DB::table('users')->where('phone', '=', $request->phone)->where('status', '1')->first();

                $responseData = array('status' => '1', 'data' => array(), 'message' => trans('labels.Success'));
            } else {
                $responseData = array('status' => '0', 'data' => array(), 'message' => trans('labels.This code is invalid'));
            }

        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);
        print $userResponse;
    }

    public static function updatepassword($request)
    {
        $messages = [
            'password.regex' => trans('labels.Password must contain letters, numbers and symbols'),     
        ];
        
        $validator = validator()->make($request->all(), [
            'phone' => 'required|max:13|exists:users',
            'password' => 'required|confirmed|min:8|max:32|regex:/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])/',
        ], $messages);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }
        // $customers_id            					=   $request->customers_id;
        $customers_info_date_account_last_modified 	=   date('y-m-d h:i:s');
        $consumer_data 		 				  =  array();
        $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
        $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
        $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
        $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
        $consumer_data['consumer_ip']  	  = request()->header('consumer-ip');
        $consumer_data['consumer_url']  	  =  __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);


        if($authenticate==1){

            $update = DB::table('users')->where('phone', '=', $request->phone)->update(['password' => Hash::make($request->password)]);
            
            //get user data
            $userData = DB::table('users')->select('users.*')->where('users.phone', '=', $request->phone)->where('status', '1')->first();
            $responseData = array('status'=>'1', 'data'=>array(), 'message'=> trans('labels.PasswordUpdateMessage'));
                
        }else{
            $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
        }

        $userResponse = json_encode($responseData);
        return $userResponse;
    }

    public static function resendVerify($request)
    {
        $validator = validator()->make($request->all(), [
            'phone' => 'required|max:13',
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $customers_telephone = $request->phone;

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

                $code = rand(1111, 9999);
        
                $verify = DB::table('verification')->where('phone', '=', $customers_telephone)->count();
                if($verify > 0) {
                    $verification = DB::table('verification')->where('phone', '=', $customers_telephone)->update(['pin_code' => $code, 'is_used' => 0]);
                } else {
                    $verification = DB::table('verification')->insert(['pin_code' => $code, 'is_used' => 0, 'phone' => $customers_telephone]);
                }
                
                $verificationCode = ['verf_code' => $code];

                $responseData = array('status' => '1', 'data' => $verificationCode, 'message' => trans('labels.check verification code in your message'));

        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);
        print $userResponse;
    }

    public static function notify_me($request)
    {
        $device_id = $request->device_id;
        $is_notify = $request->is_notify;
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

            $devices = DB::table('devices')->where('device_id', $device_id)->get();
            if (!empty($devices[0]->customers_id)) {
                $customers = DB::table('users')->where('id', $devices[0]->customers_id)->get();

                if (count($customers) > 0) {

                    foreach ($customers as $customers_data) {

                        DB::table('devices')->where('user_id', $customers_data->customers_id)->update([
                            'is_notify' => $is_notify,
                        ]);
                    }

                }
            } else {

                DB::table('devices')->where('device_id', $device_id)->update([
                    'is_notify' => $is_notify,
                ]);
            }

            $responseData = array('status' => '1', 'data' => '', 'message' => "Notification setting has been changed successfully!");
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function updatecustomerinfo($request)
    {
        $messages = [
            'password.regex' => trans('labels.Password must contain letters, numbers and symbols'),     
        ];
        
        $validator = validator()->make($request->all(), [
            'first_name' => 'required|max:30',
            'last_name' => 'required|max:30',
            'email' => 'required|email|unique:users,email,'.$request->customers_id,
            'phone' => 'required|max:13|unique:users,phone,'.$request->customers_id,
            'whatsapp_number' => 'nullable|min:10|unique:users,whatsapp_number,'.$request->customers_id,
            'password' => 'nullable|confirmed|min:8|max:32|regex:/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])/',
            'gender' => 'required',
            'invite_code' => 'nullable'
        ], $messages);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }
        
        $customers_id            			=   $request->customers_id;
        $customers_firstname            	=   $request->first_name;
        $customers_lastname           		=   $request->last_name;
        $customers_telephone          		=   $request->phone;
        $customers_whatsapp          		=   $request->whatsapp_number;
        $customers_gender          		   	=   $request->gender;
        $customers_email          		   	=   $request->email;
        $customers_info_date_account_last_modified 	=   date('y-m-d h:i:s');
        $consumer_data 		 				  =  array();
        $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
        $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
        $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
        $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
        $consumer_data['consumer_ip']  	  = request()->header('consumer-ip');
        $consumer_data['consumer_url']  	  =  __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if($authenticate==1){
        $cehckexist = DB::table('users')->where('id', $customers_id)->where('role_id', null)->first();
            if($cehckexist){

                $customer_data = array(
                    // 'role_id' => 2,
                    'first_name'			=>  $customers_firstname,
                    'last_name'			    =>  $customers_lastname,
                    'phone'			        =>  $customers_telephone,
                    'whatsapp_number'       =>  $customers_whatsapp,
                    'gender'				=>  $customers_gender,
                    'email'					=>  $customers_email,
                );


            //update into customer
            DB::table('users')->where('id', $customers_id)->update($customer_data);

            if(!empty($request->image)){
                $image = substr($request->image, strpos($request->image, ",") + 1);
                $img = base64_decode($image);
                $dir="images/users";
                if (!file_exists($dir) and !is_dir($dir)) {
                    mkdir($dir);
                }
                $uploadfile = $dir."/user_".Str::random(60).".jpg";
                file_put_contents(base_path().'/'.$uploadfile, $img);
                $profile_photo=$uploadfile;
                DB::table('users')->where('id', $customers_id)->update(['image' => $profile_photo]);
            }

            if($request->password) {
                $update = DB::table('users')->where('id', $customers_id)->update(['password' => bcrypt($request->password)]);
            }

            DB::table('customers_info')
                ->where('customers_info_id', $customers_id)
                ->update(['customers_info_date_account_last_modified'   =>   $customers_info_date_account_last_modified]);

            $userData = DB::table('users')
                ->select('users.*')->where('users.id', '=', $customers_id)
                ->where('status', '1')
                ->first();

            $responseData = array('status'=>'1', 'data'=>$userData, 'message'=>"Customer information has been Updated successfully");


            }else{
            $responseData = array('status'=>'3', 'data'=>array(),  'message'=>"Record not found.");
            }

        }else{
            $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }

    public static function getProfile($request) {
        $validator= validator()->make($request->all(),[
            'customers_id' => 'required',
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

        $consumer_data 		 				  =  array();
        $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
        $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
        $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
        $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
        $consumer_data['consumer_ip']  	  = request()->header('consumer-ip');
        $consumer_data['consumer_url']  	  =  __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if($authenticate==1){
            $id = $request->customers_id;
            // $user=User::find($id);
            $user = DB::table('users')
                ->where('id', '=', $id)
                ->where('role_id', '=', null)
                ->first();
        
            // $notifications = DB::table('notifications')
            //     ->where('user_id', '=', $id)
            //     ->where('is_seen', '=', 0)
            //     ->count();
    
            // $user->countNotification = $notifications;
    
            if($user){
                $responseData = array('status' => '1', 'data' => $user, 'message' => trans('labels.Success'));
            } else {
                $responseData = array('status' => '0', 'data' => array(), 'message' => 'Failed');
            }
        }else{
            $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
        
    }

    public static function facebookregistration($request)
    {
        require_once app_path('vendor/autoload.php');
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
            //get function from other controller
            $myVar = new AppSettingController();
            $setting = $myVar->getSetting();

            $password = substr(md5(uniqid(mt_rand(), true)), 0, 8);
            $access_token = $request->access_token;

            $fb = new \Facebook\Facebook([
                'app_id' => $setting['facebook_app_id'],
                'app_secret' => $setting['facebook_secret_id'],
                'default_graph_version' => 'v2.2',
            ]);

            try {
                $response = $fb->get('/me?fields=id,name,email,first_name,last_name,gender,public_key', $access_token);
            } catch (Facebook\Exceptions\FacebookResponseException $e) {
                echo 'Graph returned an error: ' . $e->getMessage();
            } catch (Facebook\Exceptions\FacebookSDKException $e) {
                echo 'Facebook SDK returned an error: ' . $e->getMessage();
            }

            $user = $response->getGraphUser();

            $fb_id = $user['id'];
            $customers_firstname = $user['first_name'];
            $customers_lastname = $user['last_name'];
            $name = $user['name'];
            if (empty($user['gender']) or $user['gender'] == 'male') {
                $customers_gender = '0';
            } else {
                $customers_gender = '1';
            }
            if (!empty($user['email'])) {
                $email = $user['email'];
            } else {
                $email = '';
            }

            //user information
            $fb_data = array(
                'fb_id' => $fb_id,
            );
            $customer_data = array(
                'role_id' => 2,
                'first_name' => $customers_firstname,
                'last_name' => $customers_lastname,
                'email' => $email,
                'password' => Hash::make($password),
                'status' => '1',
                'created_at' => time(),
            );

            $existUser = DB::table('customers')->where('fb_id', '=', $fb_id)->get();
            if (count($existUser) > 0) {

                $customers_id = $existUser[0]->customers_id;
                $success = "2";
                $message = "Customer record has been updated.";
                //update data of customer
                DB::table('customers')->where('user_id', '=', $customers_id)->update($fb_data);
            } else {
                $success = "1";
                $message = "Customer account has been created.";
                //insert data of customer
                $customers_id = DB::table('users')->insertGetId($customer_data);
                DB::table('customers')->insertGetId([
                    'fb_id' => $fb_id,
                    'user_id' => $customers_id,

                ]);

            }

            $userData = DB::table('users')->where('id', '=', $customers_id)->get();

            //update record of customers_info
            $existUserInfo = DB::table('customers_info')->where('customers_info_id', $customers_id)->get();
            $customers_info_id = $customers_id;
            $customers_info_date_of_last_logon = date('Y-m-d H:i:s');
            $customers_info_number_of_logons = '1';
            $customers_info_date_account_created = date('Y-m-d H:i:s');
            $global_product_notifications = '1';

            if (count($existUserInfo) > 0) {
                //update customers_info table
                DB::table('customers_info')->where('customers_info_id', $customers_info_id)->update([
                    'customers_info_date_of_last_logon' => $customers_info_date_of_last_logon,
                    'global_product_notifications' => $global_product_notifications,
                    'customers_info_number_of_logons' => DB::raw('customers_info_number_of_logons + 1'),
                ]);

            } else {
                //insert customers_info table
                $customers_default_address_id = DB::table('customers_info')->insertGetId([
                    'customers_info_id' => $customers_info_id,
                    'customers_info_date_of_last_logon' => $customers_info_date_of_last_logon,
                    'customers_info_number_of_logons' => $customers_info_number_of_logons,
                    'customers_info_date_account_created' => $customers_info_date_account_created,
                    'global_product_notifications' => $global_product_notifications,
                ]);

            }

            //check if already login or not
            $already_login = DB::table('whos_online')->where('customer_id', '=', $customers_id)->get();
            if (count($already_login) > 0) {
                DB::table('whos_online')
                    ->where('customer_id', $customers_id)
                    ->update([
                        'full_name' => $userData[0]->first_name . ' ' . $userData[0]->last_name,
                        'time_entry' => date('Y-m-d H:i:s'),
                    ]);
            } else {
                DB::table('whos_online')
                    ->insert([
                        'full_name' => $userData[0]->first_name . ' ' . $userData[0]->last_name,
                        'time_entry' => date('Y-m-d H:i:s'),
                        'customer_id' => $customers_id,
                    ]);
            }

            $responseData = array('status' => $success, 'data' => $userData, 'message' => $message);
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }

    public static function googleregistration($request)
    {
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

            $password = substr(md5(uniqid(mt_rand(), true)), 0, 8);
            //gmail user information
            $access_token = $request->idToken;
            $google_id = $request->userId;
            $customers_firstname = $request->givenName;
            $customers_lastname = $request->familyName;
            $email = $request->email;

            //user information
            $google_data = array(
                'google_id' => $google_id,
            );

            $customer_data = array(
                'role_id' => 2,
                'first_name' => $customers_firstname,
                'last_name' => $customers_lastname,
                'email' => $email,
                'password' => Hash::make($password),
                'status' => '1',
                'created_at' => time(),
            );

            $existUser = DB::table('customers')->where('google_id', '=', $google_id)->get();
            if (count($existUser) > 0) {
                $customers_id = $existUser[0]->customers_id;
                DB::table('users')->where('id', $customers_id)->update($customer_data);
            } else {
                //insert data into customer
                $customers_id = DB::table('users')->insertGetId($customer_data);
                DB::table('customers')->insertGetId([
                    'google_id' => $google_id,
                    'user_id' => $customers_id,
                ]);

            }

            $userData = DB::table('users')->where('id', '=', $customers_id)->get();

            //update record of customers_info
            $existUserInfo = DB::table('customers_info')->where('customers_info_id', $customers_id)->get();
            $customers_info_id = $customers_id;
            $customers_info_date_of_last_logon = date('Y-m-d H:i:s');
            $customers_info_number_of_logons = '1';
            $customers_info_date_account_created = date('Y-m-d H:i:s');
            $customers_info_date_account_last_modified = date('Y-m-d H:i:s');
            $global_product_notifications = '1';

            if (count($existUserInfo) > 0) {
                $success = '2';
            } else {
                //break;
                //insert customers_info table
                $customers_default_address_id = DB::table('customers_info')->insertGetId(
                    [
                        'customers_info_id' => $customers_info_id,
                        'customers_info_date_of_last_logon' => $customers_info_date_of_last_logon,
                        'customers_info_number_of_logons' => $customers_info_number_of_logons,
                        'customers_info_date_account_created' => $customers_info_date_account_created,
                        'global_product_notifications' => $global_product_notifications,
                    ]
                );
                $success = '1';
            }

            //check if already login or not
            $already_login = DB::table('whos_online')->where('customer_id', '=', $customers_id)->get();

            if (count($already_login) > 0) {
                DB::table('whos_online')
                    ->where('customer_id', $customers_id)
                    ->update([
                        'full_name' => $userData[0]->first_name . ' ' . $userData[0]->last_name,
                        'time_entry' => date('Y-m-d H:i:s'),
                    ]);
            } else {

                DB::table('whos_online')
                    ->insert([
                        'full_name' => $userData[0]->first_name . ' ' . $userData[0]->last_name,
                        'time_entry' => date('Y-m-d H:i:s'),
                        'customer_id' => $customers_id,
                    ]);
            }

            //$userData = $request->all();
            $responseData = array('success' => $success, 'data' => $userData, 'message' => "Login successfully");
        } else {
            $responseData = array('success' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }

    public static function registerdevices($request)
    {
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

            $myVar = new AppSettingController();
            $setting = $myVar->getSetting();

            $device_type = $request->device_type;

            if ($device_type == 'iOS') { /* iphone */
                $type = 1;
            } elseif ($device_type == 'Android') { /* android */
                $type = 2;
            } elseif ($device_type == 'Desktop') { /* other */
                $type = 3;
            }

            if (!empty($request->customers_id)) {

                $device_data = array(
                    'device_id' => $request->device_id,
                    'device_type' => $type,
                    'register_date' => time(),
                    'update_date' => time(),
                    'ram' => $request->ram,
                    'status' => '1',
                    'processor' => $request->processor,
                    'device_os' => $request->device_os,
                    'location' => $request->location,
                    'device_model' => $request->device_model,
                    'customers_id' => $request->customers_id,
                    'manufacturer' => $request->manufacturer,
                    $setting['default_notification'] => '1',
                );

            } else {

                $device_data = array(
                    'device_id' => $request->device_id,
                    'device_type' => $type,
                    'register_date' => time(),
                    'update_date' => time(),
                    'status' => '1',
                    'ram' => $request->ram,
                    'processor' => $request->processor,
                    'device_os' => $request->device_os,
                    'location' => $request->location,
                    'device_model' => $request->device_model,
                    'manufacturer' => $request->manufacturer,
                    $setting['default_notification'] => '1',
                );

            }

            //check device exist
            $device_id = DB::table('devices')->where('device_id', '=', $request->device_id)->get();

            if (count($device_id) > 0) {

                $dataexist = DB::table('devices')->where('device_id', '=', $request->device_id)->where('user_id', '==', '0')->get();

                DB::table('devices')
                    ->where('device_id', $request->device_id)
                    ->update($device_data);

                if (count($dataexist) >= 0) {
                    $userData = DB::table('users')->where('id', '=', $request->customers_id)->get();
                    //notification
                    $myVar = new AlertController();
                    $alertSetting = $myVar->createUserAlert($userData);
                }
            } else {
                $device_id = DB::table('devices')->insertGetId($device_data);
            }

            $responseData = array('success' => '1', 'data' => array(), 'message' => "Device is registered.");
        } else {
            $responseData = array('success' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }

    public static function allChat($request)
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
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);
        $result = array();
        if ($authenticate == 1) {

            $user_idSender = DB::table('chat_message')
                ->join('users', 'users.id', '=', 'chat_message.user_to')
                ->where('user_from', '=', $request->user_id)
                // ->orWhere('user_to', '=', $request->user_id)
                ->select('user_from', 'user_to', 'users.first_name', 'users.last_name', 'users.image', 'chat_body')
                ->groupBy('user_from')
                ->orderBy('chat_message.created_at', 'desc')
                ->get();
            
            $result[] = $user_idSender;

            $user_idReciever = DB::table('chat_message')
                ->join('users', 'users.id', '=', 'chat_message.user_from')
                // ->where('user_from', '=', $request->user_id)
                ->Where('user_to', '=', $request->user_id)
                ->select('user_from', 'user_to', 'users.first_name', 'users.last_name', 'users.image', 'chat_body')
                // ->groupBy('user_from')
                // ->orderBy('chat_message.created_at', 'desc')
                ->get();
            
            $result[] = $user_idReciever;

            $responseData = array('status' => '1', 'data' => $result, 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }

    public static function sendChat($request)
    {
        $validator = validator()->make($request->all(), [
            'user_from' => 'required',
            'user_to' => 'required',
            'chat_body' => 'required',
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
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            $user_id = DB::table('chat_message')->insert([
                'user_from' => $request->user_from,
                'user_to' => $request->user_to,
                'chat_body' => $request->chat_body,
                'created_at' => get_local_time()
            ]);

            $responseData = array('status' => '1', 'data' => array(), 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }

    public static function allChatByUser($request)
    {
        $validator = validator()->make($request->all(), [
            'user_from' => 'required',
            'user_to' => 'required',
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
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            $userFrom = $request->user_from;
            $userTo = $request->user_to;

            $user_id = DB::table('chat_message')
                ->leftJoin('users', function($join){
                    $join->on('users.id', '=', 'chat_message.user_from');
                })
                ->where(function($query) use ($userFrom, $userTo){
                    $query->where('user_from', '=', $userFrom)->Where('user_to', '=', $userTo);
                })
                ->orWhere(function($query) use ($userFrom, $userTo){
                    $query->where('user_from', '=', $userTo)->Where('user_to', '=', $userFrom);
                })
                // ->where('user_from', '=', $request->user_from)
                // ->Where('user_to', '=', $request->user_to)
                ->select('user_from', 'user_to', 'users.first_name', 'users.last_name', 'users.image', 'chat_body', 'chat_message.created_at')
                ->get();

            $responseData = array('status' => '1', 'data' => $user_id, 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }

    public static function requestseller($request)
    {
        $validator = validator()->make($request->all(), [
            'user_id' => 'required',
            'nationality_image' => 'required',
            'identity_image' => 'required'
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
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            if ($request->nationality_image) {
                $image = substr($request->nationality_image, strpos($request->nationality_image, ",") + 1);
                $img = base64_decode($image);
                $dir="images/users/nationalty";
                if (!file_exists($dir) and !is_dir($dir)) {
                    mkdir($dir);
                }
                $uploadfile = $dir."/userNationality_".Str::random(60).".jpg";
                file_put_contents(base_path().'/'.$uploadfile, $img);
                $profile_n=$uploadfile;
            }

            if ($request->identity_image) {
                $image = substr($request->identity_image, strpos($request->identity_image, ",") + 1);
                $img = base64_decode($image);
                $dir="images/users/identity";
                if (!file_exists($dir) and !is_dir($dir)) {
                    mkdir($dir);
                }
                $uploadfile = $dir."/userIdentity_".Str::random(60).".jpg";
                file_put_contents(base_path().'/'.$uploadfile, $img);
                $profile_d=$uploadfile;
            }

            $user_id = DB::table('customer_seller')->insert([
                'user_id' => $request->user_id,
                'is_request' => 1,
                'nationality_image' => $profile_n,
                'identity_image' => $profile_d
            ]);

            $responseData = array('status' => '1', 'data' => array(), 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }

    public static function chat_list($request)
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
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);
        $result = array();
        if ($authenticate == 1) {
        
            $user_id = $request->user_id;

            $messages =  array_reverse(\DB::select("SELECT * , ( r.user_from + r.user_to ) AS dist FROM ( SELECT * FROM chat_message t WHERE ( t.user_from = $user_id OR t.user_to = $user_id) ORDER BY t.chat_message_id DESC ) r JOIN (SELECT MAX(chat_message_id) chat_message_id, ( user_from + user_to ) AS dist FROM chat_message WHERE ( user_from = $user_id OR user_to = $user_id) GROUP BY dist ORDER BY chat_message_id DESC) t2 ON r.chat_message_id = t2.chat_message_id  "));
            foreach ($messages as $key => $value) {
                if ($value->user_from == $user_id ) {
                    // $value->user = Message::find($value->id)->receiver;
                    $value->user = DB::table('chat_message')
                        ->where('chat_message_id', '=', $value->chat_message_id)
                        ->join('users', 'users.id', '=', 'chat_message.user_from')
                        ->select('users.first_name', 'users.last_name', 'users.image', 'chat_body')
                        ->get();
                } else {
                    // $value->user = Message::find($value->id)->sender;
                    $value->user = DB::table('chat_message')
                        ->where('chat_message_id', '=', $value->chat_message_id)
                        ->join('users', 'users.id', '=', 'chat_message.user_from')
                        ->select('users.first_name', 'users.last_name', 'users.image', 'chat_body')
                        ->get();
                    
                }
            }
            // return response()->json(array('code' => '0','messages' => $messages), 200, ['Access-Control-Allow-Origin' => '*'], JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT);
            $responseData = array('status' => '1', 'data' => $messages, 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $userResponse = json_encode($responseData);

        return $userResponse;
    }

    

}
