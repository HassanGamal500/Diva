<?php

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

function language(){
    if (session()->get('back-locale') == 'ar') {
        return 2;
    } else {
        return 1;
    }
}

function languageSite(){
    if(session()->get('front-locale') == 'ar') {
        return 2;
    } else {
        return 1;
    }
}

function languageApi($lang){
    if($lang == 2){
        App::setLocale('ar');
    } else {
        App::setLocale('en');
    }
}

// function services(){
//     $services = DB::table('service_description')
//         ->where('language_id', '=', language())
//         ->get();
//     return $services;
// }

// function getServiceName($id){
//     $services = DB::table('service_description')
//         ->where('service_id', '=', $id)
//         ->where('language_id', '=', language())
//         ->select('service_name')
//         ->first();
//     return $services;
// }

// function nameAdmin(){
//     $id = auth()->guard('admin')->user()->id;
//     $admin = DB::table('administration')
//         ->where('id', '=', $id)
//         ->first();
//     return $admin;
// }

// function messageContact(){
//     $type = auth()->guard('admin')->user()->id;
//     $contacts = DB::table('contacts')
//         ->join('users', 'users.id', '=', 'contacts.user_id')
//         ->where('admin_id', '=', $type)
//         ->orderBy('contact_id', 'desc')
//         ->get();
//     return $contacts;
// }
//
//function messageCount(){
//    $count = DB::table('contacts')->where('contact_read', '=', 0)->count();
//    return $count;
//}
/*
function getName(){
    $type_id = Auth::guard('admin')->user()->type_id;
    if (Auth::guard('admin')->user()->type == 1){
        $user = DB::table('hospital_description')
            ->where('hospital_id', '=', $type_id)
            ->where('language_id', '=', language())
            ->select('hospital_name')
            ->first();
        return $user->hospital_name;
    } elseif (Auth::guard('admin')->user()->type == 2) {
        $user = DB::table('clinic_description')
            ->where('clinic_id', '=', $type_id)
            ->where('language_id', '=', language())
            ->select('clinic_name')
            ->first();
        return $user->clinic_name;
    } elseif (Auth::guard('admin')->user()->type == 3) {
        $user = DB::table('restaurant_description')
            ->where('restaurant_id', '=', $type_id)
            ->where('language_id', '=', language())
            ->select('restaurant_name')
            ->first();
        return $user->restaurant_name;
    } elseif(Auth::guard('admin')->user()->type == 4) {
        $user = DB::table('catering_description')
            ->where('catering_id', '=', $type_id)
            ->where('language_id', '=', language())
            ->select('catering_name')
            ->first();
        return $user->catering_name;
    } else {
        $type = Auth::guard('admin')->user()->type;
        $user = DB::table('administration')
            ->where('type', '=', $type)
            ->select('name')
            ->first();
        return $user->name;
    }
}
*/
function setting(){
    $currency = DB::table('setting_description')->where('language_id', '=', languageSite())->first();
    return $currency;
}

function allSetting(){
    $settings = DB::table('settings')->get();
    return $settings;
}

function aboutUs(){
    $about_us=DB::table('about_us')
        ->leftJoin('about_us_description', 'about_us_description.about_us_id', '=', 'about_us.about_us_id')
        ->where('about_us_description.language_id', languageSite())
        ->get();
    return $about_us;
}

function convert($string) {
    $arabic = ['٠','١','٢','٣','٤','٥','٦','٧','٨','٩',','];
    $num = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.'];
    $englishNumbersOnly = str_replace($arabic, $num, $string);

    return $englishNumbersOnly;
}

//function push_notification_android($device_id, $message){
//
//    //API URL of FCM
//    $url = 'https://fcm.googleapis.com/fcm/send';
//
//    /*api_key available in:
//    Firebase Console -> Project Settings -> CLOUD MESSAGING -> Server key*/
//    $api_key = 'AAAAGC_d8SE:APA91bHAVtK0uPNotdBBMls336P1dx9aYGor7leI2tUv0cA_jFSf4IaETNYw6MzuA_p50m58fn8Ujgi90v8gYB5XNyGhL6YJxF5jGnV7qTGVUjjZoDY31Hh7sTX8aDQJp3mgicpXLNgQ';
//
//    $fields = array (
//        'registration_ids' => array (
//            $device_id
//        ),
//        'data' => array (
//            "message" => $message
//        ),
//        'notification' => array (
//            "message" => $message
//        )
//    );
//
//    //header includes Content type and api key
//    $headers = array(
//        'Content-Type:application/json',
//        'Authorization:key='.$api_key
//    );
//
//    $ch = curl_init();
//    curl_setopt($ch, CURLOPT_URL, $url);
//    curl_setopt($ch, CURLOPT_POST, true);
//    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
//    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
//    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
//    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
//    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
//    $result = curl_exec($ch);
//    if ($result === FALSE) {
//        die('FCM Send Error: ' . curl_error($ch));
//    }
//    curl_close($ch);
//    return $result;
//}


function get_local_time(){

//   $ip = $request->getClientIp();

   // $url = 'http://ip-api.com/json/'.$ip;

   // $tz = file_get_contents($url);

   // $tz = json_decode($tz,true)['timezone'];

   date_default_timezone_set('Asia/Riyadh');
   
   return date('Y/m/d H:i:s');

}

