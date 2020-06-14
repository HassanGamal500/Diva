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

class Category extends Model
{

 public static function getMainCategories($language_id)
{
  $getCategories = DB::table('categories')
  ->leftJoin('categories_description','categories_description.categories_id', '=', 'categories.categories_id')
  ->select('categories.categories_id as id', 'categories.categories_image as image',  'categories.date_added as date_added', 'categories.last_modified as last_modified', 'categories_description.categories_name as name')
  ->where('parent_id', '0')->where('categories_description.language_id', $language_id)->get();
  return($getCategories) ;
}

public static function getCategories($request)
{
  $language_id 	 = '1';

  if(empty($request->category_id)){
    $category_id	= '0';
  }else{
    $category_id	=   $request->category_id;
  }

  $getCategories = DB::table('categories')
  ->leftJoin('categories_description','categories_description.categories_id', '=', 'categories.categories_id')
  ->select('categories.categories_id as id', 'categories.categories_image as image',  'categories.date_added as date_added', 'categories.last_modified as last_modified', 'categories_description.categories_name as name')
  ->where('parent_id', $category_id)->where('categories_description.language_id', $language_id)->get();
  return($getCategories) ;
}

public static function testReview(){
  $reviews = DB::table('reviews')
      ->where('reviews_status', '1')
      ->get();

  $avarage_rate = 0;
  $total_user_rated = 0;

  if (count($reviews) > 0) {

      $five_star = 0;
      $five_count = 0;

      $four_star = 0;
      $four_count = 0;

      $three_star = 0;
      $three_count = 0;

      $two_star = 0;
      $two_count = 0;

      $one_star = 0;
      $one_count = 0;

      foreach ($reviews as $review) {

          //five star ratting
          if ($review->reviews_rating == '5') {
              $five_star += $review->reviews_rating;
              $five_count++;
          }

          //four star ratting
          if ($review->reviews_rating == '4') {
              $four_star += $review->reviews_rating;
              $four_count++;
          }
          //three star ratting
          if ($review->reviews_rating == '3') {
              $three_star += $review->reviews_rating;
              $three_count++;
          }
          //two star ratting
          if ($review->reviews_rating == '2') {
              $two_star += $review->reviews_rating;
              $two_count++;
          }

          //one star ratting
          if ($review->reviews_rating == '1') {
              $one_star += $review->reviews_rating;
              $one_count++;
          }

      }

      $five_ratio = round($five_count / count($reviews) * 100);
      $four_ratio = round($four_count / count($reviews) * 100);
      $three_ratio = round($three_count / count($reviews) * 100);
      $two_ratio = round($two_count / count($reviews) * 100);
      $one_ratio = round($one_count / count($reviews) * 100);

      $avarage_rate = (5 * $five_star + 4 * $four_star + 3 * $three_star + 2 * $two_star + 1 * $one_star) / ($five_star + $four_star + $three_star + $two_star + $one_star);
      $total_user_rated = count($reviews);
      $reviewed_customers = $reviews;
  } else {
      $reviewed_customers = array();
      $avarage_rate = 0;
      $total_user_rated = 0;

      $five_ratio = 0;
      $four_ratio = 0;
      $three_ratio = 0;
      $two_ratio = 0;
      $one_ratio = 0;
  }
  return response()->json($reviews->avg('reviews_rating'));
}


}
