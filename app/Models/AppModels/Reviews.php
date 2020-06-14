<?php

namespace App\Models\AppModels;

use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\Admin\AdminSiteSettingController;
use App\Http\Controllers\Admin\AdminCategoriesController;
use App\Http\Controllers\Admin\AdminProductsController;
use App\Http\Controllers\App\AppSettingController;
use App\Http\Controllers\App\AlertController;
use DB;
use Lang;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Validator;
use Mail;
use DateTime;
use Auth;
use Carbon;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;


class Reviews extends Model
{

  public static function givereview($request){

    $validator = validator()->make($request->all(), [
      'products_id' => 'required',
      'customers_id' => 'required',
      'customers_name' => 'required',
      'reviews_rating' => 'required',
      'reviews_text' => 'required',
      'review_image' => 'required',
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

    $consumer_data 		 				  =  array();
    $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
    $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
    $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
    $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
    $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
    $consumer_data['consumer_url']  	  =  __FUNCTION__;
    $authController = new AppSettingController();
    $authenticate = $authController->apiAuthenticate($consumer_data);

    if($authenticate==1){
        $products_id = $request->products_id;
        $customers_id = $request->customers_id;
        $customers_name = $request->customers_name;
        $reviews_rating = $request->reviews_rating;

        $languages_id = $request->language_id;

        if($request->reviews_text){
          $reviews_text = $request->reviews_text;
        }else{
          $reviews_text = '';
        }

        //check already reviewed by this customer for this product
        $reviews = DB::table('reviews')->where(
                        ['products_id'=>$products_id,
                        'customers_id'=>$customers_id,]
                      )->get();

        if(count($reviews)==0){

          $reviews_id = DB::table('reviews')->insertGetId([
                          'products_id'=>$products_id,
                          'customers_id'=>$customers_id,
                          'customers_name'=>$customers_name,
                          'reviews_rating'=>$reviews_rating,
                          'reviews_text'=>$reviews_text,
                          // 'review_image'=>$profile_photo,
                          'created_at'=>date('Y-m-d H:i:s'),
                          'reviews_status'=>1,
                          'reviews_read'=>0
                        ]);
            
          if ($request->review_image) {
              $images = $request->review_image;
              if(!array_filter($images) == []){
                  foreach ($images as  $key => $value) {
                      $image = substr($value['image'], strpos($value['image'], ",") + 1);
                      $img = base64_decode($image);
                      $dir="images/reviews";
                      if (!file_exists($dir) and !is_dir($dir)) {
                          mkdir($dir);
                      }
                      $uploadfile = $dir."/review_".Str::random(60).".jpg";
                      file_put_contents(base_path().'/'.$uploadfile, $img);
                      $profile_photo = $uploadfile;
                      $insertImage = DB::table('review_images')
                          ->insert([
                              'review_image' => $profile_photo,
                              'review_id' => $reviews_id
                          ]);
                  }
              }
          }

            $responseData = array('status'=>'1', 'data'=>array(), 'message'=>'Product is reviewed successfully!');

          }else{
            $responseData = array('status'=>'1', 'data'=>array(), 'message'=>'You have already given the review for this product.');
          }

    }else{
      $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
    }
    $userResponse = json_encode($responseData);

    return $userResponse;
  }


  public static function updatereview($request){

    $validator = validator()->make($request->all(), [
      'products_id' => 'required',
      'customers_id' => 'required',
      'customers_name' => 'required',
      'reviews_rating' => 'required',
      'reviews_text' => 'nullable',
      'review_image' => 'nullable',
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

    $consumer_data 		 				  =  array();
    $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
    $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
    $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
    $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
    $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
    $consumer_data['consumer_url']  	  =  __FUNCTION__;
    $authController = new AppSettingController();
    $authenticate = $authController->apiAuthenticate($consumer_data);

    if($authenticate==1){

       $products_id = $request->products_id;
       $customers_id = $request->customers_id;
       $customers_name = $request->customers_name;
       $reviews_rating = $request->reviews_rating;

       $languages_id = $request->languages_id;

       if($request->reviews_text){
         $reviews_text = $request->reviews_text;
       }else{
         $reviews_text = '';
       }

       //check already reviewed by this customer for this product
       $reviews = DB::table('reviews')->where(
                       ['products_id'=>$products_id,
                       'customers_id'=>$customers_id,]
                     )->first();

       if($reviews){

        if(!empty($request->review_image)){
          $image = substr($request->review_image, strpos($request->review_image, ",") + 1);
          $img = base64_decode($image);
          $dir="images/reviews";
          if (!file_exists($dir) and !is_dir($dir)) {
              mkdir($dir);
          }
          $uploadfile = $dir."/pic_".time().".jpg";
          file_put_contents(base_path().'/'.$uploadfile, $img);
          $profile_photo=$uploadfile;
        }

         $reviews_id = DB::table('reviews')
                        ->where('products_id', $products_id)
                        ->where('customers_id', $customers_id)
                        ->update([
                           'reviews_rating'=>$reviews_rating,
                           'reviews_text'=>$reviews_text,
                           'review_image'=>$profile_photo,
                           'updated_at'=>date('Y-m-d H:i:s'),
                           'reviews_read'=>0
                         ]);

           $responseData = array('status'=>'1', 'data'=>array(), 'message'=>'Your review has been updated successfully!');

         }else{
           $responseData = array('status'=>'1', 'data'=>array(), 'message'=>'You dont have any review for this product.');
         }

    }else{
      $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
    }
    $userResponse = json_encode($responseData);

    return $userResponse;
  }


   public static function getreviews($request){

    $validator = validator()->make($request->all(), [
      'products_id' => 'required',
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

    $consumer_data 		 				          =  array();
    $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
    $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
    $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
    $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
    $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
    $consumer_data['consumer_url']  	  =  __FUNCTION__;
    $authController = new AppSettingController();
    $authenticate = $authController->apiAuthenticate($consumer_data);

    $results		 				          =  array();

    if($authenticate==1){

        $products_id = $request->products_id;
        $languages_id = $request->language_id;

        $reviews = DB::table('reviews')
                  ->join('users','users.id','=','reviews.customers_id')
                  ->select('reviews.reviews_id', 'reviews.products_id', 'reviews.reviews_rating as rating', 'reviews.created_at', 'reviews.reviews_text as comments', 'users.first_name',
                  'users.last_name', 'users.email', 'users.image')
                  ->where('reviews.products_id', $products_id)
                  ->where('reviews.reviews_status', 1)
                  ->get();

        foreach($reviews as $review){
          $images = DB::table('review_images')
          ->where('review_id', '=', $review->reviews_id)
          ->select('review_image')
          ->get();
          $review->review_images = $images; 
        }

        if($reviews){
            $responseData = array('status'=>'1', 'data'=>$reviews, 'message'=>'Product rating has been returned!');
        }else{
            $responseData = array('status'=>'1', 'data'=>array(), 'message'=>'Product is not rated yet.');
        }

    }else{
      $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
    }
    $userResponse = json_encode($responseData);

    return $userResponse;
  }


}
