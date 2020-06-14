<?php
namespace App\Http\Controllers\App;

//validator is builtin class in laravel
use Validator;

use DB;
//for password encryption or hash protected
use Hash;

//for authenitcate login data
use Auth;
use Illuminate\Foundation\Auth\ThrottlesLogins;

//for requesting a value
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

//for Carbon a value
use Carbon;

class PagesController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */

	//getAllPages
	public function getallpages(Request $request){
		$language_id            				=   $request->language_id;
		$consumer_data 		 				  =  array();
		$consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
		$consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
		$consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
		$consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
		$consumer_data['consumer_ip']  	      =  request()->header('consumer-ip');
		$consumer_data['consumer_url']  	  =  __FUNCTION__;
		$authController = new AppSettingController();
		$authenticate = $authController->apiAuthenticate($consumer_data);

		if($authenticate==1){

			$data = DB::table('pages')
				->LeftJoin('pages_description', 'pages_description.page_id', '=', 'pages.page_id')
				->where('pages_description.language_id', '=', $language_id)
				->select('pages.page_id', 'name', 'description')
				->get();
				
			$aboutUs = DB::table('about_us')
				->LeftJoin('about_us_description', 'about_us_description.about_us_id', '=', 'about_us.about_us_id')
				->where('about_us_description.language_id', '=', $language_id)
				->select('about_us.about_us_id', 'about_image', 'about_description_part', 'about_description_full', 'our_value', 'mission', 'our_vision')
				->get();
				
			$faq = DB::table('faqs')
				->LeftJoin('faq_description', 'faq_description.faq_id', '=', 'faqs.faq_id')
				->where('faq_description.language_id', '=', $language_id)
				->where('status', '=', 1)
				->select('faqs.faq_id', 'faq_question', 'faq_answer')
				->get();

			$result = array();
// 			$result['pages'] = $data;
// 			$result['about'] = $aboutUs;
// 			$result['faq'] = $faq;
			
			$index = 0;
			foreach($data as $pages_data){
				array_push($result, $pages_data);

				// $description =  $pages_data->description;
				$result[$index]->title = 'pages';
				$index++;
			}
			
//             foreach($aboutUs as $pages_data){
// 				array_push($result, $pages_data);
// 				$result[$index]->title = 'about';
// 				$index++;
// 			}
			
// 			foreach($faq as $pages_data){
// 				array_push($result, $pages_data);
				
// 				$index++;
// 			}


			//check if record exist
			if(count($data)>0){
				$responseData = array('success'=>'1', 'data'=>$result,  'message'=>"Returned all Pages.");
			}else{
				$responseData = array('success'=>'0', 'data'=>array(),  'message'=>"Empty record.");
			}
		}else{
			$responseData = array('success'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
		}
		$categoryResponse = json_encode($responseData);
		print $categoryResponse;
	}

	public function getAbout(Request $request){
		$language_id            				=   $request->language_id;
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

			$data = DB::table('about_us')
				->LeftJoin('about_us_description', 'about_us_description.about_us_id', '=', 'about_us.about_us_id')
				->where('about_us_description.language_id', '=', $language_id)
				->select('about_us.about_us_id', 'about_image', 'about_description_part', 'about_description_full', 'our_value', 'mission', 'our_vision')
				->get();

			// $result = array();
			// $index = 0;
			// foreach($data as $pages_data){
			// 	array_push($result, $pages_data);

			// 	$description =  $pages_data->description;
			// 	$result[$index]->description = stripslashes($description);
			// 	$index++;

			// }

			//check if record exist
			if(count($data)>0){
					$responseData = array('success'=>'1', 'pages_data'=>$data,  'message'=>"Returned About Us.");
				}else{
					$responseData = array('success'=>'0', 'pages_data'=>array(),  'message'=>"Empty record.");
				}
		}else{
			$responseData = array('success'=>'0', 'pages_data'=>array(),  'message'=>"Unauthenticated call.");
		}
		$categoryResponse = json_encode($responseData);
		print $categoryResponse;
	}

	public function getFaq(Request $request){
		$language_id            				=   $request->language_id;
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

			$data = DB::table('faqs')
				->LeftJoin('faq_description', 'faq_description.faq_id', '=', 'faqs.faq_id')
				->where('faq_description.language_id', '=', $language_id)
				->where('status', '=', 1)
				->select('faqs.faq_id', 'faq_question', 'faq_answer')
				->get();

			// $result = array();
			// $index = 0;
			// foreach($data as $pages_data){
			// 	array_push($result, $pages_data);

			// 	$description =  $pages_data->description;
			// 	$result[$index]->description = stripslashes($description);
			// 	$index++;

			// }

			//check if record exist
			if(count($data)>0){
					$responseData = array('success'=>'1', 'pages_data'=>$data,  'message'=>"Returned FAQs.");
				}else{
					$responseData = array('success'=>'0', 'pages_data'=>array(),  'message'=>"Empty record.");
				}
		}else{
			$responseData = array('success'=>'0', 'pages_data'=>array(),  'message'=>"Unauthenticated call.");
		}
		$categoryResponse = json_encode($responseData);
		print $categoryResponse;
	}

	public function getBlog(Request $request){
		$language_id            				=   $request->language_id;
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

			$data = DB::table('blogs')
				->LeftJoin('blog_description', 'blog_description.blog_id', '=', 'blogs.blog_id')
				->where('blog_description.language_id', '=', $language_id)
				->where('status', '=', 1)
				->select('blogs.blog_id', 'blog_image', 'blog_date', 'blog_title', 'blog_description_part', 'blog_description_full')
				->get();

			// $result = array();
			// $index = 0;
			// foreach($data as $pages_data){
			// 	array_push($result, $pages_data);

			// 	$description =  $pages_data->description;
			// 	$result[$index]->description = stripslashes($description);
			// 	$index++;

			// }

			//check if record exist
			if(count($data)>0){
					$responseData = array('success'=>'1', 'pages_data'=>$data,  'message'=>"Returned Blogs.");
				}else{
					$responseData = array('success'=>'0', 'pages_data'=>array(),  'message'=>"Empty record.");
				}
		}else{
			$responseData = array('success'=>'0', 'pages_data'=>array(),  'message'=>"Unauthenticated call.");
		}
		$categoryResponse = json_encode($responseData);
		print $categoryResponse;
	}

}
