<?php
use Illuminate\Support\Facades\App;
Route::get('site/lang/{locale}', function ($locale){
    App::setLocale($locale);
    // session()->put('locale', $locale);
    session()->put('front-locale', $locale);
    return redirect()->back();
    // session()->put('front-locale', $locale);
});

// Route::get('/public', function() {
// 	return redirect()->intended('google.com');
// });

Route::group(['namespace' => 'websiteControllers', 'middleware' => ['front_language']], function () {
    Route::get('/', 'genralController@home')->name('home');
    Route::get('blog', 'genralController@blog');
    Route::get('blog/{id}','genralController@singleBlog');
    Route::get('aboutUs', 'genralController@aboutUs');
    Route::get('contactUs', 'genralController@contactUs');
    Route::post('sendMail', 'genralController@sendContact');
    Route::post('addSubscribes', 'genralController@addSubscribes');
    Route::get('terms', 'genralController@terms');
    Route::get('refunds', 'genralController@refunds');
    Route::get('how', 'genralController@how');
    Route::get('faq', 'genralController@faq');
    Route::get('myAccount', 'genralController@account');
    
    
    // Auth
    Route::post('post-login', 'AuthController@postLogin'); 
    Route::post('post-registration', 'AuthController@postRegistration');
    Route::get('web-logout', 'AuthController@logout');
    Route::post('update-profile', 'AuthController@updateProfile');
    Route::post('update-reset', 'AuthController@forgetPassword');
    Route::post('verification', 'AuthController@checkPinCode');
    Route::post('reset-password', 'AuthController@newPassword');
    Route::post('resend', 'AuthController@resend');
});