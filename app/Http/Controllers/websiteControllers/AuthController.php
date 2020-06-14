<?php
 
namespace App\Http\Controllers\websiteControllers;
 
use Illuminate\Http\Request;
use Validator,Redirect,Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Session;
use DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
 
class AuthController extends Controller
{
    
    public function postLogin(Request $request) {
        $validator= validator()->make($request->all(),[
            'phone' => 'required|exists:users',
            'password' => 'required',
        ]);

        if ($validator->fails()){

            $response = [
                'status' => 0,
                'message' => trans('labels.invalid phone number or passowrd'),
                'data' => []
            ];
            return response()->json($response);

        }
 
        $credentials = $request->only('phone', 'password');
        // dd($credentials);
        // if (Auth::guard('customer')->attempt($credentials)) {
        if (Auth::guard('customer')->attempt(['phone' => $request->phone, 'password' => $request->password, 'status' => 1])) {
            // Authentication passed...
            return response()->json(1);
        } else {
            $response = [
                'status' => 0,
                'message' => trans('labels.invalid phone number or passowrd'),
                'data' => []
            ];
            return response()->json($response);
        }
    }
 
    public function postRegistration(Request $request) {
        $validator= validator()->make($request->all(),[
            'fisrtName' => 'required',
            'lastName' => 'required',
            'email' => 'required|email|unique:users,email',
            'phone' => 'required|unique:users,phone',
            'password' => 'required|min:6',
            'code' => 'nullable',
            'gender' => 'nullable',
        ]);
        
        if ($validator->fails()){

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            return response()->json($response);

        }

        if (filter_var(filter_var(strtolower($request->email), FILTER_SANITIZE_EMAIL), FILTER_VALIDATE_EMAIL) 
        && preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", strtolower($request->email)) 
        && preg_match("/[\p{Arabic}A-Za-z]/u", $request->fisrtName) && preg_match("/[\p{Arabic}A-Za-z]/u", $request->lastName) 
        && !preg_match("/[0-9]/u", $request->fisrtName) && !preg_match("/[0-9]/u", $request->lastName)
        && preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->password)
        && $request->gender != null && preg_match("/[0-9]/u", $request->phone)) {

            $code = rand(1111, 9999);
        
            $verify = DB::table('verification')->where('phone', '=', $request->phone)->count();
            if($verify > 0) {
                $verification = DB::table('verification')->where('phone', '=', $request->phone)->update(['pin_code' => '1234', 'is_used' => 0]);
            } else {
                $verification = DB::table('verification')->insert(['pin_code' => '1234', 'is_used' => 0, 'phone' => $request->phone]);
            }

            $response = [
                'status' => 1,
                'message' => [],
                'data' => $verification
            ];
        
            return response()->json(1);

        } else {
            if(!preg_match("/[\p{Arabic}A-Za-z]/u", $request->fisrtName) || preg_match("/[0-9]/u", $request->fisrtName) || !preg_match("/[\p{Arabic}A-Za-z]/u", $request->lastName) || preg_match("/[0-9]/u", $request->lastName)) {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.first name or last name must contain only characters'),
                    'data' => []
                ];
                return response()->json($response);
            } elseif(!preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->password)) {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.Password must contain letters, numbers and symbols'),
                    'data' => []
                ];
                return response()->json($response);
            } elseif($request->gender == null) {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.select gender'),
                    'data' => []
                ];
                return response()->json($response);
            } elseif(!preg_match("/[0-9]/u", $request->phone)) {
                
                $response = [
                    'status' => 0,
                    'message' => trans('labels.number phone must contain only numbers'),
                    'data' => []
                ];
                return response()->json($response);
                
            } else {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.your email is not correct'),
                    'data' => []
                ];
                return response()->json($response);
            }
        }
    }
     
    public function logout() {
        // Session::flush();
        Auth::guard('customer')->logout();
        return redirect('/');
    }
    
    public function updateProfile(Request $request) {

        $id = auth()->guard('customer')->user()->id;
        $validator= validator()->make($request->all(),[
            'fisrtName' => 'required',
            'lastName' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'password' => 'nullable|min:6',
            'new_password' => 'nullable|min:6',
            'code' => 'nullable',
            'gender' => 'nullable',
        ]);

        if ($validator->fails()){

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            return response()->json($response);

        }

        if (filter_var(filter_var(strtolower($request->email), FILTER_SANITIZE_EMAIL), FILTER_VALIDATE_EMAIL) 
        && preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", strtolower($request->email)) 
        && preg_match("/[\p{Arabic}A-Za-z]/u", $request->fisrtName) && preg_match("/[\p{Arabic}A-Za-z]/u", $request->lastName) 
        && !preg_match("/[0-9]/u", $request->fisrtName) && !preg_match("/[0-9]/u", $request->lastName)
        && preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->password)
        // && preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->new_password)
        && $request->gender != null && preg_match("/[0-9]/u", $request->phone)) {
            $user = DB::table('users')->where('id', '=', $id)->select('image', 'password')->first();
            $allPhone = DB::table('users')->where('phone', $request->phone)->where('id', '!=', $id)->count();
            $allEmail = DB::table('users')->where('email', $request->email)->where('id', '!=', $id)->count();
            $checkPassword = Hash::check($request->password, $user->password);
            // dd($checkPassword);
            
            if ($allPhone > 0 || $allEmail > 0 || $checkPassword == 0) {
                if ($allPhone > 0){
                    $response = [
                        'status' => 0,
                        'message' => trans('labels.This phone has been taken before'),
                        'data' => []
                    ];
                    return response()->json($response);
                } elseif($allEmail > 0) {
                    $response = [
                        'status' => 0,
                        'message' => trans('labels.This email has been taken before'),
                        'data' => []
                    ];
                    return response()->json($response);
                } elseif ($checkPassword == 0) {
                    $response = [
                        'status' => 0,
                        'message' => trans('labels.your password is not correct'),
                        'data' => []
                    ];
                    return response()->json($response);
                }
            } else {
                if($request->new_password != null){
                    if(!preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->new_password)){
                        $response = [
                            'status' => 0,
                            'message' => trans('labels.New Password must contain letters, numbers and symbols'),
                            'data' => []
                        ];
                        return response()->json($response);
                    }
                }
                
                if ($request->hasFile('image_user')) {
                    $imageName = Storage::disk('edit_path')->putFile('images/users', $request->file('image_user'));
                    $update = DB::table('users')->where('id', '=', $id)->update(['image'    =>  $imageName]);
                } 
                
                if($request->new_password != null ){
                    $update = DB::table('users')->where('id', '=', $id)->update([
                        'first_name'        => $request->fisrtName,
                        'last_name'         => $request->lastName,
                        'email'             => $request->email,
                        'phone'             => $request->phone,
                        'password'          => Hash::make($request->new_password),
                        'invite_code'       => $request->code,
                        'gender'            => $request->gender,
                        // 'image'             => $imageName
                    ]);
                } else {
                    $update = DB::table('users')->where('id', '=', $id)->update([
                        'first_name'        => $request->fisrtName,
                        'last_name'         => $request->lastName,
                        'email'             => $request->email,
                        'phone'             => $request->phone,
                        'invite_code'       => $request->code,
                        'gender'            => $request->gender,
                        // 'image'             => $imageName
                    ]);
                }
                
                return response()->json(1);
            }
        } else {
            if(!preg_match("/[\p{Arabic}A-Za-z]/u", $request->fisrtName) 
            || preg_match("/[0-9]/u", $request->fisrtName) 
            || !preg_match("/[\p{Arabic}A-Za-z]/u", $request->lastName) 
            || preg_match("/[0-9]/u", $request->lastName)) {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.first name or last name must contain only characters'),
                    'data' => []
                ];
                return response()->json($response);
            } elseif(!preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->password)) {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.Password must contain letters, numbers and symbols'),
                    'data' => []
                ];
                return response()->json($response);
            // } elseif(!preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->new_password)) {
            //     $response = [
            //         'status' => 0,
            //         'message' => trans('labels.New Password must contain letters, numbers and symbols'),
            //         'data' => []
            //     ];
            //     return response()->json($response);
            } elseif($request->gender == null) {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.select gender'),
                    'data' => []
                ];
                return response()->json($response);
            } elseif(!preg_match("/[0-9]/u", $request->phone)) {
                
                $response = [
                    'status' => 0,
                    'message' => trans('labels.number phone must contain only numbers'),
                    'data' => []
                ];
                return response()->json($response);
                
            } else {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.your email is not correct'),
                    'data' => []
                ];
                return response()->json($response);
            }
        }
        
    }
    
    public function forgetPassword(Request $request) {
        $validator = validator()->make($request->all(),[
            'phone' => 'required|exists:users',
        ]);

        if ($validator->fails()){

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            return response()->json($response);
        }
        
        if(preg_match("/[0-9]/u", $request->phone)){
            $user = DB::table('users')->where('phone', $request->phone)->first();
    
            if ($user) {
                $code = rand(1111, 9999);
                $verify = DB::table('verification')->where('phone', '=', $request->phone)->count();
                if($verify > 0) {
                    $update = DB::table('verification')->where('phone', '=', $request->phone)->update(['pin_code' => '1234', 'is_used' => 0]);
                } else {
                    $update_n = DB::table('verification')->insert(['pin_code' => '1234', 'is_used' => 0, 'phone' => $request->phone]);
                    $update = true;
                }
                
                if ($update = true) {
                    // $to_name = $user->name;
                    // $to_email = $user->email;
                    // $data = array('name'=> $user->name, "body" => "Your Reset Code Is :".$code);
    
                    // Mail::send('email.mail', $data, function($message) use ($to_name, $to_email) {
                    //     $message->to($to_email, $to_name)
                    //         ->subject('Reset Password');
                    //     $message->from('info@diva.com','Diva');
                    // });
    
                    return response()->json(1);
    
                } else {
                    return response()->json(0);
                }
    
            } else {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.your phone is not correct'),
                    'data' => []
                ];
                return response()->json($response);
            }
        } else {
            $response = [
                'status' => 0,
                'message' => trans('labels.number phone must contain only numbers'),
                'data' => []
            ];
            return response()->json($response);
        }
            
    }
    
    public function checkPinCode(Request $request) {
        $validator = validator()->make($request->all(),[
            'pin_code' => 'required|min:4'
        ]);

        if ($validator->fails()){

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            return response()->json($response);

        }

        $user = DB::table('verification')->where('pin_code', $request->pin_code)
            ->where('phone', $request->phone)
            ->where('is_used', '=', 0)
            ->count();

        if ($user > 0){
            if($request->type == 1){
                $check = DB::table('users')->insert([
                    'first_name'        => $request->firstName,
                    'last_name'         => $request->lastName,
                    'email'             => $request->email,
                    'phone'             => $request->phone,
                    'password'          => Hash::make($request->password),
                    'invite_code'       => $request->invite_code,
                    'gender'            => $request->gender,
                    'image'             => 'images/users/avatar_user.png'
                ]);
                
                $update = DB::table('verification')->where('phone', '=', $request->phone)->update(['is_used' => 1]);
                
                $credentials = $request->only('phone', 'password');
                if (Auth::guard('customer')->attempt($credentials)) {
                    // Authentication passed...
                }
                return response()->json(1);
            } else {
                $update = DB::table('verification')->where('phone', '=', $request->phone)->update(['is_used' => 1]);
                return response()->json(2);
            }
        } else {
            $response = [
                'status' => 0,
                'message' => trans('labels.This code is invalid'),
                'data' => []
            ];
            return response()->json($response);
        }
    }
    
    public function newPassword(Request $request) {

        $validator = validator()->make($request->all(),[
            'phone' => 'required',
            'new_password' => 'required|min:6',
        ]);

        if ($validator->fails()){

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            return response()->json($response);

        }
        
        if(preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->password) 
        && preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->new_password)) {
            $user = DB::table('users')->where('phone', $request->phone)->first();
    
            if ($user) {
                
                if($request->new_password == $request->renew_password){
                    $update = DB::table('users')->where('phone', '=', $request->phone)->update(['password' => bcrypt($request->new_password)]);
                    return response()->json(1);
                } else {
                    return response()->json(0);
                }
    
            } else {
    
                return response()->json(0);
    
            }
        } else {
            if(!preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->password)) {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.Password must contain letters, numbers and symbols'),
                    'data' => []
                ];
                return response()->json($response);
            } elseif(!preg_match("/^(?=.*?[a-zA-Z])(?=.*?[0-9])/", $request->new_password)) {
                $response = [
                    'status' => 0,
                    'message' => trans('labels.New Password must contain letters, numbers and symbols'),
                    'data' => []
                ];
                return response()->json($response);
            }
        }

            
    }
    
    public function resend(Request $request) {
        $validator = validator()->make($request->all(),[
            'phone' => 'required|exists:users',
        ]);

        if ($validator->fails()){

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            return response()->json($response);
        }

        $user = DB::table('users')->where('phone', $request->phone)->first();

        if ($user) {
            $code = rand(1111, 9999);
            $verify = DB::table('verification')->where('phone', '=', $request->phone)->count();
            if($verify > 0) {
                $update = DB::table('verification')->where('phone', '=', $request->phone)->update(['pin_code' => '1234', 'is_used' => 0]);
            } else {
                $update = DB::table('verification')->insert(['pin_code' => '1234', 'is_used' => 0, 'phone' => $request->phone]);
                $update = true;
            }
            
            if ($update = true) {
                // $to_name = $user->name;
                // $to_email = $user->email;
                // $data = array('name'=> $user->name, "body" => "Your Reset Code Is :".$code);

                // Mail::send('email.mail', $data, function($message) use ($to_name, $to_email) {
                //     $message->to($to_email, $to_name)
                //         ->subject('Reset Password');
                //     $message->from('info@diva.com','Diva');
                // });

                return response()->json(1);

            } else {
                return response()->json(0);
            }

        }

    }
}