<?php

namespace App\Models\AppModels;

use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\Admin\AdminSiteSettingController;
use App\Http\Controllers\Admin\AdminCategoriesController;
use App\Http\Controllers\Admin\AdminProductsController;
use App\Http\Controllers\App\AppSettingController;
use App\Http\Controllers\App\AlertController;
use App\Models\AppModels\Product;
use DB;
use Lang;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Validator;
use Mail;
use DateTime;
use Auth;
use Carbon;
use Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;

class Orders extends Model
{

  public static function convertprice($current_price, $requested_currency)
  {
    $required_currency = DB::table('currencies')->where('is_current',1)->where('code', $requested_currency)->first();
    $products_price = $current_price * $required_currency->value;
    // dd($current_price);
    return $products_price;
  }

  public static function converttodefaultprice($current_price, $requested_currency)
  {
    $required_currency = DB::table('currencies')->where('is_current',1)->where('code', $requested_currency)->first();
    $products_price = $current_price * $required_currency->value;
    return $products_price;
  }

  public static function currencies($currency_code){
   $currencies = DB::table('currencies')->where('is_current',1)->where('code', $currency_code)->first();
   return $currency_code;
  }

 public static function hyperpaytoken($request)
{
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
    $payments_setting = Orders::payments_setting_for_hyperpay($request);

    //check envinment
    if($payments_setting[0]->hyperpay_enviroment == '0'){
      $env_url = "https://test.oppwa.com/v1/checkouts";
    }else{
      $env_url = "https://oppwa.com/v1/checkouts";
    }

    //use currency account currency only e:g. 'SAR'
    $url = $env_url;
    $data = "authentication.userId=" .$payments_setting['userid']->value.
			"&authentication.password=" .$payments_setting['password']->value.
			"&authentication.entityId=" .$payments_setting['entityid']->value.
      "&amount=" . $request->amount.
      "&currency=SAR" .
      "&paymentType=DB".
      "&customer.email=".$request->email.
      "&testMode=INTERNAL".
      "&merchantTransactionId=". uniqid();

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);// this should be set to true in production
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $responseData = curl_exec($ch);
    if(curl_errno($ch)) {
      return curl_error($ch);
    }
    curl_close($ch);

    $data = json_decode($responseData);

    if($data->result->code=='000.200.100'){
      $responseData = array('success'=>'1', 'token'=>$data->id, 'message'=>"Token generated.");
    }else{
      $responseData = array('success'=>'2', 'token'=>array(), 'message'=>$data->result->description);
    }

  }else{
    $responseData = array('success'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function generatebraintreetoken()
{
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
    $payments_setting = Orders::payments_setting_for_brain_tree($request);

    //braintree transaction get nonce
    $is_transaction  = '0'; 			# For payment through braintree

    if($payments_setting['merchant_id']->environment == '0'){
			$braintree_environment = 'sandbox';
		}else{
			$environment = 'production';
    }

    $braintree_merchant_id = $payments_setting['merchant_id']->value;
    $braintree_public_key  = $payments_setting['public_key']->value;
    $braintree_private_key = $payments_setting['private_key']->value;

    //for token please check braintree.php file
    require_once app_path('braintree/Braintree.php');

    $responseData = array('success'=>'1', 'token'=>$clientToken, 'message'=>"Token generated.");
  }else{
    $responseData = array('success'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function getpaymentmethods($request)
{
  $validator = validator()->make($request->all(), [
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

    $result = array();
    $payments_setting = Orders::payments_setting_for_brain_tree($request);

		if($payments_setting['merchant_id']->environment=='0'){
			$braintree_enviroment = 'Test';
		}else{
			$braintree_enviroment = 'Live';
		}

    $braintree_card = array(
      'auth_token' => '',
      'client_id' => '',
      'client_secret' => '',
      'environment' => $braintree_enviroment,
			'name' => $payments_setting['merchant_id']->name,
			'public_key' => $payments_setting['public_key']->value,
			'active' => $payments_setting['merchant_id']->status,
			'payment_method'=>$payments_setting['merchant_id']->payment_method,
			'method'=>'braintree_card',
    );

    $braintree_paypal = array(
      'auth_token' => '',
      'client_id' => '',
      'client_secret' => '',
      'environment' => $braintree_enviroment,
			'name' => $payments_setting['merchant_id']->sub_name_2,
			'public_key' => $payments_setting['public_key']->value,
			'active' => $payments_setting['merchant_id']->status,
			'payment_method'=>$payments_setting['merchant_id']->payment_method,
			'method' => 'braintree_paypal',
    );

    $payments_setting = Orders::payments_setting_for_stripe($request);

    if($payments_setting['publishable_key']->environment=='0'){
      $stripe_enviroment = 'Test';
    }else{
      $stripe_enviroment = 'Live';
    }

    $stripe = array(
      'auth_token' => '',
      'client_id' => '',
      'client_secret' => '',
      'environment' => $stripe_enviroment,
      'name' => $payments_setting['publishable_key']->name,
      'public_key' => $payments_setting['publishable_key']->value,
      'active' => $payments_setting['publishable_key']->status,
			'payment_method'=>$payments_setting['publishable_key']->payment_method,
			'method' => 'stripe',
    );

    $payments_setting = Orders::payments_setting_for_cod($request);

    $cod = array(
      'environment' => '',
      'method' => 'cod',
      'public_key' => '',
      'auth_token' => '',
      'client_id' => '',
      'client_secret' => '',
      'name' => $payments_setting->name,
      'active' => $payments_setting->status,
			'payment_method'=>'cod'
    );

    $payments_setting = Orders::payments_setting_for_paypal($request);

    if($payments_setting['id']->environment=='0'){
			$paypal_enviroment = 'Test';
		}else{
			$paypal_enviroment = 'Live';
		}

    $paypal = array(
      'method' => 'paypal',
      'auth_token' => '',
      'client_id' => '',
      'client_secret' => '',
      'environment' => $paypal_enviroment,
			'name' => $payments_setting['id']->name,
			'public_key' => $payments_setting['id']->value,
			'active' => $payments_setting['id']->status,
			'payment_method'=>$payments_setting['id']->payment_method,
    );


    $payments_setting = Orders::payments_setting_for_instamojo($request);

    if($payments_setting['auth_token']->environment=='0'){
			$instamojo_enviroment = 'Test';
		}else{
			$instamojo_enviroment = 'Live';
		}

    $instamojo = array(
      'environment' => $instamojo_enviroment,
      'name' => $payments_setting['auth_token']->name,
      'method' => 'instamojo',
      'public_key' => $payments_setting['api_key']->value,
      'auth_token' => $payments_setting['auth_token']->value,
      'client_id' => $payments_setting['client_id']->value,
      'client_secret' => $payments_setting['client_secret']->value,
      'active' => $payments_setting['api_key']->status,
			'payment_method'=>'instamojo',
    );

    $payments_setting = Orders::payments_setting_for_hyperpay($request);

    if($payments_setting['userid']->environment=='0'){
			$hyperpay_enviroment = 'Test';
		}else{
			$hyperpay_enviroment = 'Live';
		}


    $hyperpay = array(
      'method' => 'hyperpay',
      'public_key' => '',
      'auth_token' => '',
      'client_id' => '',
      'client_secret' => '',
      'environment' => $hyperpay_enviroment,
      'name' => $payments_setting['userid']->name,
      'active' => $payments_setting['userid']->status,
			'payment_method'=>'hyperpay',
    );


    $result[0] = $braintree_card;
    $result[1] = $braintree_paypal;
    $result[2] = $stripe;
    $result[3] = $cod;
    $result[4] = $paypal;
    $result[5] = $instamojo;
    $result[6] = $hyperpay;

    $responseData = array('success'=>'1', 'data'=>$result, 'message'=>"Payment methods are returned.");
  }else{
    $responseData = array('success'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function payments_setting_for_brain_tree($request){
  $payments_setting = DB::table('payment_methods_detail')
  ->leftjoin('payment_description', 'payment_description.payment_methods_id', '=', 'payment_methods_detail.payment_methods_id')
  ->leftjoin('payment_methods', 'payment_methods.payment_methods_id', '=', 'payment_methods_detail.payment_methods_id')
  ->select('payment_methods_detail.*','payment_description.sub_name_1','payment_description.sub_name_2','payment_description.name', 'payment_methods.environment', 'payment_methods.status', 'payment_methods.payment_method')
  ->where('language_id', $request->language_id)
  ->where('payment_description.payment_methods_id',1)->get()->keyBy('key');
  return $payments_setting;
}

public static function payments_setting_for_stripe($request){
  $payments_setting = DB::table('payment_methods_detail')
  ->leftjoin('payment_description', 'payment_description.payment_methods_id', '=', 'payment_methods_detail.payment_methods_id')
  ->leftjoin('payment_methods', 'payment_methods.payment_methods_id', '=', 'payment_methods_detail.payment_methods_id')
  ->select('payment_methods_detail.*', 'payment_description.name', 'payment_methods.environment', 'payment_methods.status', 'payment_methods.payment_method')
  ->where('language_id', $request->language_id)
  ->where('payment_description.payment_methods_id',2)->get()->keyBy('key');
  return $payments_setting;
}

public static function payments_setting_for_cod($request){
  $payments_setting = DB::table('payment_description')
  ->leftjoin('payment_methods', 'payment_methods.payment_methods_id', '=', 'payment_description.payment_methods_id')
  ->select('payment_description.name', 'payment_methods.environment', 'payment_methods.status', 'payment_methods.payment_method')
  ->where('language_id', $request->language_id)
  ->where('payment_description.payment_methods_id',4)->first();
  return $payments_setting;
}

public static function payments_setting_for_paypal($request){
  $payments_setting = DB::table('payment_methods_detail')
  ->leftjoin('payment_description', 'payment_description.payment_methods_id', '=', 'payment_methods_detail.payment_methods_id')
  ->leftjoin('payment_methods', 'payment_methods.payment_methods_id', '=', 'payment_methods_detail.payment_methods_id')
  ->select('payment_methods_detail.*', 'payment_description.name', 'payment_methods.environment', 'payment_methods.status', 'payment_methods.payment_method')
  ->where('language_id', $request->language_id)
  ->where('payment_description.payment_methods_id',3)->get()->keyBy('key');
  return $payments_setting;
}

public static function payments_setting_for_instamojo($request){
  $payments_setting = DB::table('payment_methods_detail')
  ->leftjoin('payment_description', 'payment_description.payment_methods_id', '=', 'payment_methods_detail.payment_methods_id')
  ->leftjoin('payment_methods', 'payment_methods.payment_methods_id', '=', 'payment_methods_detail.payment_methods_id')
  ->select('payment_methods_detail.*', 'payment_description.name', 'payment_methods.environment', 'payment_methods.status', 'payment_methods.payment_method')
  ->where('language_id', $request->language_id)
  ->where('payment_description.payment_methods_id',5)->get()->keyBy('key');
  return $payments_setting;
}

public static function payments_setting_for_hyperpay($request){
  $payments_setting = DB::table('payment_methods_detail')
  ->leftjoin('payment_description', 'payment_description.payment_methods_id', '=', 'payment_methods_detail.payment_methods_id')
  ->leftjoin('payment_methods', 'payment_methods.payment_methods_id', '=', 'payment_methods_detail.payment_methods_id')
  ->select('payment_methods_detail.*', 'payment_description.name', 'payment_methods.environment', 'payment_methods.status', 'payment_methods.payment_method')
  ->where('language_id', $request->language_id)
  ->where('payment_description.payment_methods_id',6)->get()->keyBy('key');
  return $payments_setting;
}

public static function getrate($request)
{
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

    //tax rate
    $tax_zone_id   			=   $request->tax_zone_id;
    $requested_currency =   $request->currency_code;

    $index = '0';
    $total_tax = '0';
    $is_number = true;
    foreach($request->products as $products_data){
      $final_price = $request->products[$index]['final_price'];
      $products = DB::table('products')
        ->LeftJoin('tax_rates', 'tax_rates.tax_class_id','=','products.products_tax_class_id')
        ->where('tax_rates.tax_zone_id', $tax_zone_id)
        ->where('products_id', $products_data['products_id'])->get();
      if(count($products)>0){
        $tax_value = $products[0]->tax_rate/100*$final_price;
        $total_tax = $total_tax+$tax_value;
        $index++;
      }
    }

    if($total_tax>0){
      $total_tax = Orders::convertprice($total_tax, $requested_currency);
      $data['tax'] = $total_tax;
    }else{
      $data['tax'] = '0';
    }


    $countries = DB::table('countries')->where('countries_id','=',$request->country_id)->get();

    //website path
    $websiteURL =  "http://" . $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];
    $replaceURL = str_replace('getRate','', $websiteURL);
    $requiredURL = $replaceURL.'app/ups/ups.php';


    //default shipping method
    $shippings = DB::table('shipping_methods')->get();

    $result = array();

    foreach($shippings as $shipping_methods){
      //ups shipping rate
      if($shipping_methods->methods_type_link == 'upsShipping' and $shipping_methods->status == '1'){
        $result2= array();
        $is_transaction = '0';

        $ups_shipping = DB::table('ups_shipping')->where('ups_id', '=', '1')->get();

        //shipp from and all credentials
        $accessKey  = $ups_shipping[0]->access_key;
        $userId 	= $ups_shipping[0]->user_name;
        $password 	= $ups_shipping[0]->password;

        //ship from address
        $fromAddress  = $ups_shipping[0]->address_line_1;
        $fromPostalCode  = $ups_shipping[0]->post_code;
        $fromCity  = $ups_shipping[0]->city;
        $fromState  = $ups_shipping[0]->state;
        $fromCountry  = $ups_shipping[0]->country;

        //ship to address
        $toPostalCode = $request->postcode;
        $toCity = $request->city;
        $toState = $request->state;
        $toCountry = $countries[0]->countries_iso_code_2;
        $toAddress = $request->street_address;

        //product detail
        $products_weight = $request->products_weight;
        $products_weight_unit = $request->products_weight_unit;

        //change G or KG to LBS
        if($products_weight_unit=='g'){
          $productsWeight = $products_weight/453.59237;
        }else if($products_weight_unit=='kg'){
          $productsWeight = $products_weight/0.45359237;
        }

        //production or test mode
        if($ups_shipping[0]->shippingEnvironment == 1){ 			#production mode
          $useIntegration = true;
        }else{
          $useIntegration = false;								#test mode
        }

        $serviceData = explode(',',$ups_shipping[0]->serviceType);


        $index = 0;
        $description = DB::table('shipping_description')->where([
                  ['language_id', '=', $request->language_id],
                  ['table_name', '=',  'ups_shipping'],
                ])->get();

        $sub_labels = json_decode($description[0]->sub_labels);

        foreach($serviceData as $value){
          if($value == "US_01")
          {
            $name = $sub_labels->nextDayAir;
            $serviceTtype = "1DA";
          }
          else if ($value == "US_02")
          {
            $name = $sub_labels->secondDayAir;
            $serviceTtype = "2DA";
          }
            else if ($value == "US_03")
          {
            $name = $sub_labels->ground;
            $serviceTtype = "GND";
          }
          else if ($value == "US_12")
          {
            $name = $sub_labels->threeDaySelect;
            $serviceTtype = "3DS";
          }
          else if ($value == "US_13")
          {
            $name = $sub_labels->nextDayAirSaver;
            $serviceTtype = "1DP";
          }
          else if ($value == "US_14")
          {
            $name = $sub_labels->nextDayAirEarlyAM;
            $serviceTtype = "1DM";
          }
          else if ($value == "US_59")
          {
            $name = $sub_labels->secondndDayAirAM;
            $serviceTtype = "2DM";
          }
          else if($value == "IN_07")
          {
            $name = Lang::get("labels.Worldwide Express");
            $serviceTtype = "UPSWWE";
          }
          else if ($value == "IN_08")
          {
            $name = Lang::get("labels.Worldwide Expedited");
            $serviceTtype = "UPSWWX";
          }
          else if ($value == "IN_11")
          {
            $name = Lang::get("labels.Standard");
            $serviceTtype = "UPSSTD";
          }
          else if ($value == "IN_54")
          {
            $name = Lang::get("labels.Worldwide Express Plus");
            $serviceTtype = "UPSWWEXPP";
          }

        $some_data = array(
          'access_key' => $accessKey,  						# UPS License Number
          'user_name' => $userId,								# UPS Username
          'password' => $password, 							# UPS Password
          'pickUpType' => '03',								# Drop Off Location
          'shipToPostalCode' => $toPostalCode, 				# Destination  Postal Code
          'shipToCountryCode' => $toCountry,					# Destination  Country
          'shipFromPostalCode' => $fromPostalCode, 			# Origin Postal Code
          'shipFromCountryCode' => $fromCountry,				# Origin Country
          'residentialIndicator' => 'IN', 					# Residence Shipping and for commercial shipping "COM"
          'cServiceCodes' => $serviceTtype, 					# Sipping rate for UPS Ground
          'packagingType' => '02',
          'packageWeight' => $productsWeight
          );

          $curl = curl_init();
          // You can also set the URL you want to communicate with by doing this:
          // $curl = curl_init('http://localhost/echoservice');

          // We POST the data
          curl_setopt($curl, CURLOPT_POST, 1);
          // Set the url path we want to call
          curl_setopt($curl, CURLOPT_URL, $requiredURL);
          // Make it so the data coming back is put into a string
          curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
          // Insert the data
          curl_setopt($curl, CURLOPT_POSTFIELDS, $some_data);

          // You can also bunch the above commands into an array if you choose using: curl_setopt_array

          // Send the request
          $rate = curl_exec($curl);
          // Free up the resources $curl is using
          curl_close($curl);
         $ups_description = DB::table('shipping_description')->where('table_name','ups_shipping')->where('language_id',$request->language_id)->get();
         if(!empty($ups_description[0]->name)){
          $methodName = $ups_description[0]->name;
         }else{
          $methodName = 'UPS Shipping';
         }
         if (is_numeric($rate)){
          $rate = Orders::convertprice($rate, $requested_currency);
          $success = array('success'=>'1', 'message'=>"Rate is returned.", 'name'=>$methodName);
          $result2[$index] = array('name'=>$name,'rate'=>$rate,'currencyCode'=>$requested_currency,'shipping_method'=>'upsShipping');
          $index++;
         }
         else{
          $success = array('success'=>'0','message'=>"Selected regions are not supported for UPS shipping", 'name'=>$ups_description[0]->name);
         }

          $success['services'] = $result2;
          $result['upsShipping'] = $success;

        }


      }else if($shipping_methods->methods_type_link == 'flateRate' and $shipping_methods->status == '1'){
        $description = DB::table('shipping_description')->where('table_name','flate_rate')->where('language_id',$request->language_id)->get();

        if(!empty($description[0]->name)){
          $methodName = $description[0]->name;
        }else{
          $methodName = 'Flate Rate';
        }

        $ups_shipping = DB::table('flate_rate')->where('id', '=', '1')->get();
        $rate = Orders::convertprice($ups_shipping[0]->flate_rate, $requested_currency);
        $data2 =  array('name'=>$methodName,'rate'=>$rate,'currencyCode'=>$requested_currency,'shipping_method'=>'flateRate');
        if(count($ups_shipping)>0){
          $success = array('success'=>'1', 'message'=>"Rate is returned.", 'name'=>$methodName);
          $success['services'][0] = $data2;
          $result['flateRate'] = $success;
        }


      }else if($shipping_methods->methods_type_link == 'localPickup' and $shipping_methods->status == '1') {
        $description = DB::table('shipping_description')->where('table_name','local_pickup')->where('language_id',$request->language_id)->get();

        if(!empty($description[0]->name)){
          $methodName = $description[0]->name;
        }else{
          $methodName = 'Local Pickup';
        }

        $data2 =  array('name'=>$methodName, 'rate'=>'0', 'currencyCode'=>$requested_currency, 'shipping_method'=>'localPickup');
        $success = array('success'=>'1', 'message'=>"Rate is returned.", 'name'=>$methodName);
        $success['services'][0] = $data2;
        $result['localPickup'] = $success;

      }else if($shipping_methods->methods_type_link == 'freeShipping'  and $shipping_methods->status == '1'){
        $description = DB::table('shipping_description')->where('table_name','free_shipping')->where('language_id',$request->language_id)->get();

        if(!empty($description[0]->name)){
          $methodName = $description[0]->name;
        }else{
          $methodName = 'Free Shipping';
        }

        $data2 =  array('name'=>$methodName,'rate'=>'0','currencyCode'=>$requested_currency,'shipping_method'=>'freeShipping');
        $success = array('success'=>'1', 'message'=>"Rate is returned.", 'name'=>$methodName);
        $success['services'][0] = $data2;
        $result['freeShipping'] = $success;

      }else if($shipping_methods->methods_type_link == 'shippingByWeight'  and $shipping_methods->status == '1'){
        $description = DB::table('shipping_description')->where('table_name','shipping_by_weight')->where('language_id',$request->language_id)->get();
        if(!empty($description[0]->name)){
          $methodName = $description[0]->name;
        }else{
          $methodName = 'Shipping Price';
        }

        $weight = $request->products_weight;

        //check price by weight
        $priceByWeight = DB::table('products_shipping_rates')->where('weight_from','<=',$weight)->where('weight_to','>=',$weight)->get();

        if(!empty($priceByWeight) and count($priceByWeight)>0 ){
          $price = $priceByWeight[0]->weight_price;
          $rate = Orders::convertprice($price, $requested_currency);
        }else{
          $rate = 0;
        }

        $data2 =  array('name'=>$methodName,'rate'=>$rate,'currencyCode'=>$requested_currency,'shipping_method'=>'Shipping Price');
        $success = array('success'=>'1', 'message'=>"Rate is returned.", 'name'=>$methodName);
        $success['services'][0] = $data2;
        $result['freeShipping'] = $success;
      }
    }
    $data['shippingMethods'] = $result;

    $responseData = array('success'=>'1', 'data'=>$data, 'message'=>"Data is returned.");
  }else{
    $responseData = array('success'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function getcoupon($request)
{

  $validator = validator()->make($request->all(), [
    'code' => 'required',
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

  		$result = array();
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

  			$coupons = DB::table('coupons')->where('code', '=', $request->code)->get();

  			if(count($coupons)>0){

  				if(!empty($coupons[0]->product_ids)){
  					$product_ids = explode(',', $coupons[0]->product_ids);
  					$coupons[0]->product_ids =  $product_ids;
  				}
  				else{
  					$coupons[0]->product_ids = array();
  				}

  				if(!empty($coupons[0]->exclude_product_ids)){
  					$exclude_product_ids = explode(',', $coupons[0]->exclude_product_ids);
  					$coupons[0]->exclude_product_ids =  $exclude_product_ids;
  				}else{
  					$coupons[0]->exclude_product_ids =  array();
  				}

  				if(!empty($coupons[0]->product_categories)){
  					$product_categories = explode(',', $coupons[0]->product_categories);
  					$coupons[0]->product_categories =  $product_categories;
  				}else{
  					$coupons[0]->product_categories =  array();
  				}

  				if(!empty($coupons[0]->excluded_product_categories)){
  					$excluded_product_categories = explode(',', $coupons[0]->excluded_product_categories);
  					$coupons[0]->excluded_product_categories =  $excluded_product_categories;
  				}else{
  					$coupons[0]->excluded_product_categories = array();
  				}

  				if(!empty($coupons[0]->email_restrictions)){
  					$email_restrictions = explode(',', $coupons[0]->email_restrictions);
  					$coupons[0]->email_restrictions =  $email_restrictions;
  				}else{
  					$coupons[0]->email_restrictions =  array();
  				}

  				if(!empty($coupons[0]->used_by)){
  					$used_by = explode(',', $coupons[0]->used_by);
  					$coupons[0]->used_by =  $used_by;
  				}else{
  					$coupons[0]->used_by =  array();
  				}

  				$responseData = array('status'=>'1', 'data'=>$coupons, 'message'=>"Coupon info is returned.");
  			}else{
  				$responseData = array('status'=>'0', 'data'=>$coupons, 'message'=>"Coupon doesn't exist.");
  			}
  		}else{
  			$responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  		}

  		$orderResponse = json_encode($responseData);

      return $orderResponse;
}

public static function addToCart($request)
{
  $validator = validator()->make($request->all(), [
    'products_id' => 'required',
    'customers_id' => 'required',
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
  $customers_id						  =  $request->customers_id;
  $products_id              =  $request->products_id;
  $language_id						  =  $request->language_id;
  $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
  $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
  $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
  $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
  $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
  $consumer_data['consumer_url']  	  =  __FUNCTION__;
  $authController = new AppSettingController();
  $authenticate = $authController->apiAuthenticate($consumer_data);

  if($authenticate==1){
    $cart = DB::table('customers_basket')
      ->insert([
        'customers_id' => $customers_id,
        'products_id' => $products_id,
        'customers_basket_quantity' => 1,
        'customers_basket_date_added' => date('Y-m-d')
      ]);
    $responseData = array('status'=>'1', 'data'=>array(), 'message'=>"Added To Cart Successfully");
  }else{
    $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function myCart($request)
{
  $validator = validator()->make($request->all(), [
    'customers_id' => 'required',
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
  $customers_id						  =  $request->customers_id;
  $language_id						  =  $request->language_id;
  $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
  $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
  $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
  $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
  $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
  $consumer_data['consumer_url']  	  =  __FUNCTION__;
  $authController = new AppSettingController();
  $authenticate = $authController->apiAuthenticate($consumer_data);

  if($authenticate==1){
    $carts = DB::table('customers_basket')->where('customers_id', '=', $customers_id)->get();
    $result = array();
    $total = 0;
    foreach($carts as $cart){
      $product = DB::table('products')
        ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
        ->where('products_description.language_id', '=', $language_id)
        ->where('products.products_status', '=', '1')
        ->where('products.products_id', '=', $cart->products_id)
        ->select('products.products_id', 'products_image', 'products_price', 'products_status',
          'purchase_type', 'brand_id', 'for_whom', 'condition_id', 'products_name')
        ->first();

      $total += $product->products_price;

      if($product->purchase_type == 0) {
        $product->purchase_type = trans('labels.Sell');
      } else {
        $product->purchase_type = trans('labels.Rental');
      }

      if($product->for_whom == 0) {
        $product->for_whom = trans('labels.men');
      } else {
        $product->for_whom = trans('labels.women');
      }

      $condition = DB::table('conditions')
        ->join('condition_description', 'condition_description.condition_id', '=', 'conditions.condition_id')
        ->where('language_id', '=', $language_id)
        ->where('conditions.condition_id', '=', $product->condition_id)
        ->select('conditions.condition_id', 'condition_name')
        ->first();

      $product->condition = $condition->condition_name;

      $brand = DB::table('brands')
        ->join('brand_description', 'brand_description.brand_id', '=', 'brands.brand_id')
        ->where('language_id', '=', $language_id)
        ->where('brands.brand_id', '=', $product->brand_id)
        ->select('brands.brand_id', 'brand_name')
        ->first();

      $product->brand = $brand->brand_name;

      array_push($result, $product);
      $options = array();
      $attr = array();

      //like product
      if (!empty($request->customers_id)) {
          $liked_customers_id = $request->customers_id;
          $categories = DB::table('liked_products')->where('liked_products_id', '=', $cart->products_id)->where('liked_customers_id', '=', $liked_customers_id)->get();
          if (count($categories) > 0) {
              $result[0]->isLiked = '1';
          } else {
              $result[0]->isLiked = '0';
          }
      } else {
          $result[0]->isLiked = '0';
      }

      // fetch all options add join from products_options table for option name
      $products_attribute = DB::table('products_attributes')->where('products_id', '=', $cart->products_id)->groupBy('options_id')->get();
      if (count($products_attribute) > 0) {
          $index2 = 0;
          foreach ($products_attribute as $attribute_data) {
              $option_name = DB::table('products_options')
                  ->leftJoin('products_options_descriptions', 'products_options_descriptions.products_options_id', '=', 'products_options.products_options_id')
                  ->select('products_options.products_options_id', 'products_options_descriptions.options_name as products_options_name', 'products_options_descriptions.language_id')
                  ->where('language_id', '=', $language_id)
                  ->where('products_options.products_options_id', '=', $attribute_data->options_id)
                  ->get();
              if (count($option_name) > 0) {
                  $temp = array();
                  $temp_option['id'] = $attribute_data->options_id;
                  $temp_option['name'] = $option_name[0]->products_options_name;
                  $attr[$index2]['option'] = $temp_option;

                  // fetch all attributes add join from products_options_values table for option value name
                  $attributes_value_query = DB::table('products_attributes')
                      ->where('products_id', '=', $cart->products_id)
                      ->where('options_id', '=', $attribute_data->options_id)
                      ->get();
                  foreach ($attributes_value_query as $products_option_value) {

                      //$option_value = DB::table('products_options_values')->leftJoin('products_options_values_descriptions','products_options_values_descriptions.products_options_values_id','=','products_options_values.products_options_values_id')->select('products_options_values.products_options_values_id', 'products_options_values_descriptions.options_values_name as products_options_values_name' )->where('products_options_values_descriptions.language_id','=', $language_id)->where('products_options_values.products_options_values_id','=', $products_option_value->options_values_id)->get();
                      $option_value = DB::table('products_options_values')
                          ->where('products_options_values_id', '=', $products_option_value->options_values_id)
                          ->first();

                      $attributes = DB::table('products_attributes')
                          ->where([
                              ['products_id', '=', $cart->products_id], 
                              ['options_id', '=', $attribute_data->options_id], 
                              ['options_values_id', '=', $products_option_value->options_values_id]
                          ])
                          ->get();
                      $temp_i['products_attributes_id'] = $attributes[0]->products_attributes_id;
                      $temp_i['id'] = $products_option_value->options_values_id;

                      if (!empty($option_value->products_options_values_name)) {
                          $temp_i['value'] = $option_value->products_options_values_name;
                      } else {
                          $temp_i['value'] = '';
                      }

                  }
                  $attr[$index2]['values'] = $temp_i;
                  $result[0]->attributes = $attr;
                  $index2++;
              }
          }
      } else {
          $result->attributes = array();
      }

    }
    $result[0]->total = $total;
    $responseData = array('status'=>'1', 'data'=>$result, 'message'=>"Showed My Cart Successfully");
  }else{
    $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function deleteCart($request)
{
  $validator = validator()->make($request->all(), [
    'products_id' => 'required',
    'customers_id' => 'required',
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
  $customers_id						  =  $request->customers_id;
  $products_id              =  $request->products_id;
  $language_id						  =  $request->language_id;
  $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
  $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
  $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
  $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
  $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
  $consumer_data['consumer_url']  	  =  __FUNCTION__;
  $authController = new AppSettingController();
  $authenticate = $authController->apiAuthenticate($consumer_data);

  if($authenticate==1){
    $cart = DB::table('customers_basket')->where('customers_id', '=', $customers_id)->where('products_id', '=', $products_id)->delete();
    $responseData = array('status'=>'1', 'data'=>array(), 'message'=>"Deleted Cart Successfully");
  }else{
    $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function shippingMethods($request)
{
  $validator = validator()->make($request->all(), [
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
  $language_id						  =  $request->language_id;
  $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
  $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
  $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
  $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
  $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
  $consumer_data['consumer_url']  	  =  __FUNCTION__;
  $authController = new AppSettingController();
  $authenticate = $authController->apiAuthenticate($consumer_data);

  if($authenticate==1){
    $result = array();
    $shippings = DB::table('shipping_methods')
      ->join('shipping_description' , 'shipping_description.shipping_method_id', '=', 'shipping_methods.shipping_methods_id')
      ->select('shipping_methods.shipping_methods_id', 'shipping_name', 'shipping_price')
      ->where('language_id', '=', $language_id)
      ->where('status', '=', 1)
      ->get();
    $responseData = array('status'=>'1', 'data'=>$shippings, 'message'=>"Successfully");
  }else{
    $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function addtoorder($request)
{
  $validator = validator()->make($request->all(), [
    'products' => 'required',
    'customers_id' => 'required',
    'user_address' => 'required',
    'payment_method' => 'required',
    'totalPrice' => 'required',
    'shipping_cost' => 'required',
    'shipping_method' => 'required',
    'is_coupon_applied' => 'required',
    'coupon_amount' => 'required',
    'coupons' => 'required',
    'customer_seller' => 'required',
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
  $ipAddress = Orders::get_client_ip_env();

  if($authenticate==1){
      foreach($request->products as $products){
        $req = array();
        $req['products_id'] = $products['products_id'];
        if(isset($products['attributes'])){
          $req['attributes'] = $products['attributes'];
        }
        $check = Product::getquantity($req);
        $check = json_decode($check);
        // if($products['customers_basket_quantity'] > $check->stock){
        //   $responseData = array('success'=>'1', 'data'=>array(),'products_id' => $products['products_id'], 'message'=>"Some Products are out of Stock.");
        //   $orderResponse = json_encode($responseData);
        //   return $orderResponse;
        // }
      }

      $getUser = DB::table('users')->where('id', '=', $request->customers_id)->first();
      $getAddress = DB::table('address_book')
        // ->where('user_id', '=', $request->customers_id)
        ->where('address_book_id', '=', $request->user_address)
        ->first();
      
      $customers_id            				        =   $request->customers_id;
			$date_added								=	date('Y-m-d h:i:s');
			$customers_telephone            		=   $getUser->phone;
			$email            						=   $getUser->email;
			$delivery_firstname  	          		=   $getUser->first_name;
			$delivery_lastname            			=   $getUser->last_name;
			$delivery_street_address                =   $getAddress->entry_street_address;
			$delivery_city            				=   $getAddress->entry_city;
			$delivery_postcode            			=   $getAddress->entry_postcode;


			$delivery = DB::table('zones')->where('zone_name', '=', $getAddress->entry_zone_id)->get();

			if(count($delivery)){
				$delivery_state            				=   $delivery[0]->zone_code;
			}else{
				$delivery_state            				=   'other';
			}

			$delivery_country            			    =   $getAddress->entry_country_id;
			$billing_firstname            			    =   $getUser->first_name;
			$billing_lastname            			    =   $getUser->last_name;
			$billing_street_address            	        =   $getAddress->entry_street_address;
			$billing_city            				    =   $getAddress->entry_city;
			$billing_postcode            			    =   $getAddress->entry_postcode;

			$billing = DB::table('zones')->where('zone_name', '=', $getAddress->entry_zone_id)->get();

			if(count($billing)){
				$billing_state            				=   $billing[0]->zone_code;
			}else{
				$billing_state            				=   'other';
			}

			$billing_country            			  =   $getAddress->entry_country_id;
			$payment_method            				  =   $request->payment_method;
			$order_information 						      =	  array();

			// $cc_type            				        =   $request->cc_type;
			// $cc_owner            				        =   $request->cc_owner;
			// $cc_number            				      =   $request->cc_number;
			// $cc_expires            				      =   $request->cc_expires;
			$last_modified            			    =   date('Y-m-d H:i:s');
			$date_purchased            			    =   date('Y-m-d H:i:s');
      $order_price						            =   $request->totalPrice;
			$currency_code           				    =   "SAR";
      $order_price                        =   Orders::converttodefaultprice($request->totalPrice, $currency_code);
      $shipping_cost            			    =   $request->shipping_cost;
      $shipping_cost                      =   Orders::converttodefaultprice($request->shipping_cost, $currency_code);
			$shipping_method            		    =   $request->shipping_method;
			$orders_status            			    =   '1';
			$orders_date_finished               =   $request->orders_date_finished;
			$comments            				        =   $request->comments;

			//additional fields
			$delivery_phone						          =	$getUser->phone;
			$billing_phone						          =	$getUser->phone;

			$settings = DB::table('settings')->get();
			$currency_value            			    =   $request->currency_value;

			//tax info
      $total_tax							            =	$request->total_tax;
      $total_tax                          = Orders::converttodefaultprice($request->total_tax, $currency_code);

			$products_tax 						          = 	14;
			//coupon info
			$is_coupon_applied            	    =   $request->is_coupon_applied;

			if($is_coupon_applied==1){

				$code = array();
				$coupon_amount = 0;
				$exclude_product_ids = array();
				$product_categories = array();
				$excluded_product_categories = array();
				$exclude_product_ids = array();

        $coupon_amount    =		$request->coupon_amount;

        //convert price to default currency price
        $coupon_amount = Orders::converttodefaultprice($coupon_amount, $currency_code);

				foreach($request->coupons as $coupons_data){

					//update coupans
					$coupon_id = DB::statement("UPDATE `coupons` SET `used_by`= CONCAT(used_by,',$customers_id') WHERE `code` = '".$coupons_data['code']."'");

				}
				$code = json_encode($request->coupons);

			}else{
				$code            					    =   '';
				$coupon_amount            		=   0;
			}

			//payment methods
			$payments_setting = Orders::payments_setting_for_brain_tree($request);

			if($payment_method == 'braintree_card' or $payment_method == 'braintree_paypal'){
				if($payment_method == 'braintree_card'){
					$fieldName = 'sub_name_1';
				}else{
					$fieldName = 'sub_name_2';
				}

				$paymentMethodName = $payments_setting->$fieldName;

				//braintree transaction with nonce
				$is_transaction  = '1'; 			# For payment through braintree
				$nonce    		 =   $request->nonce;

        if($payments_setting['merchant_id']->environment=='0'){
    			$braintree_enviroment = 'Test';
    		}else{
    			$braintree_enviroment = 'Live';
    		}

        $braintree_merchant_id = $payments_setting['merchant_id']->value;
        $braintree_public_key  = $payments_setting['public_key']->value;
        $braintree_private_key = $payments_setting['private_key']->value;

				//brain tree credential
				require_once app_path('braintree/Braintree.php');

				if ($result->success)
				{
				if($result->transaction->id)
					{
						$order_information = array(
							'braintree_id'=>$result->transaction->id,
							'status'=>$result->transaction->status,
							'type'=>$result->transaction->type,
							'currencyIsoCode'=>$result->transaction->currencyIsoCode,
							'amount'=>$result->transaction->amount,
							'merchantAccountId'=>$result->transaction->merchantAccountId,
							'subMerchantAccountId'=>$result->transaction->subMerchantAccountId,
							'masterMerchantAccountId'=>$result->transaction->masterMerchantAccountId,
							//'orderId'=>$result->transaction->orderId,
							'createdAt'=>time(),
	            //						'updatedAt'=>$result->transaction->updatedAt->date,
							'token'=>$result->transaction->creditCard['token'],
							'bin'=>$result->transaction->creditCard['bin'],
							'last4'=>$result->transaction->creditCard['last4'],
							'cardType'=>$result->transaction->creditCard['cardType'],
							'expirationMonth'=>$result->transaction->creditCard['expirationMonth'],
							'expirationYear'=>$result->transaction->creditCard['expirationYear'],
							'customerLocation'=>$result->transaction->creditCard['customerLocation'],
							'cardholderName'=>$result->transaction->creditCard['cardholderName']
						);
						$payment_status = "success";
					}
				}
				else
					{
						$payment_status = "failed";
					}

			}else if($payment_method == 'stripe'){				#### stipe payment

        $payments_setting = Orders::payments_setting_for_stripe($request);
				$paymentMethodName = $payments_setting['publishable_key']->name;

				//require file
				require_once app_path('stripe/config.php');

				//get token from app
				$token  = $request->nonce;

				$customer = \Stripe\Customer::create(array(
				  'email' => $email,
				  'source'  => $token
				));

				$charge = \Stripe\Charge::create(array(
				  'customer' => $customer->id,
				  'amount'   => 100*$order_price,
				  'currency' => 'usd'
				));

				 if($charge->paid == true){
					 $order_information = array(
							'paid'=>'true',
							'transaction_id'=>$charge->id,
							'type'=>$charge->outcome->type,
							'balance_transaction'=>$charge->balance_transaction,
							'status'=>$charge->status,
							'currency'=>$charge->currency,
							'amount'=>$charge->amount,
							'created'=>date('d M,Y', $charge->created),
							'dispute'=>$charge->dispute,
							'customer'=>$charge->customer,
							'address_zip'=>$charge->source->address_zip,
							'seller_message'=>$charge->outcome->seller_message,
							'network_status'=>$charge->outcome->network_status,
							'expirationMonth'=>$charge->outcome->type
						);

						$payment_status = "success";

				 }else{
						$payment_status = "failed";
				 }

			}else if($payment_method == 'cod'){

        $payments_setting = Orders::payments_setting_for_cod($request);
				$paymentMethodName =  $payments_setting->name;
				$payment_method = 'Cash on Delivery';
				$payment_status='success';

			} else if($payment_method == 'paypal'){

        $payments_setting = Orders::payments_setting_for_paypal($request);
				$paymentMethodName = $payments_setting['id']->name;
				$payment_method = 'PayPal Express Checkout';
				$payment_status='success';
				$order_information = $request->nonce;

			} else if($payment_method == 'instamojo'){

        $payments_setting = Orders::payments_setting_for_instamojo($request);
				$paymentMethodName = $payments_setting['auth_token']->name;
				$payment_method = 'Instamojo';
				$payment_status='success';
				$order_information = array('payment_id'=>$request->nonce, 'transaction_id'=>$request->transaction_id);

			}else if($payment_method == 'hyperpay'){
        $payments_setting = Orders::payments_setting_for_hyperpay($request);
				$paymentMethodName = $payments_setting['userid']->name;
				$payment_method = 'Hyperpay';
				$payment_status='success';
			}


			//check if order is verified
			if($payment_status=='success'){
				if( $payment_method == 'hyperpay'){
          $cyb_orders = DB::table('orders')->where('transaction_id','=',$request->transaction_id)->get();
          //dd($cyb_orders);
          $orders_id = $cyb_orders[0]->orders_id;

          //update database
          DB::table('orders')->where('transaction_id','=',$request->transaction_id)->update(
					[	 'customers_id' => $customers_id,
						 'customers_name'  => $delivery_firstname.' '.$delivery_lastname,
						 'customers_street_address' => $delivery_street_address,
						//  'customers_suburb'  =>  $delivery_suburb,
						 'customers_city' => $delivery_city,
						 'customers_postcode'  => $delivery_postcode,
						 'customers_state' => $delivery_state,
						 'customers_country'  =>  $delivery_country,
						 'customers_telephone' => $customers_telephone,
						 'email'  => $email,

						 'delivery_name'  =>  $delivery_firstname.' '.$delivery_lastname,
						 'delivery_street_address' => $delivery_street_address,
						//  'delivery_suburb'  => $delivery_suburb,
						 'delivery_city' => $delivery_city,
						 'delivery_postcode'  =>  $delivery_postcode,
						 'delivery_state' => $delivery_state,
						 'delivery_country'  => $delivery_country,
						 'billing_name'  => $billing_firstname.' '.$billing_lastname,
						 'billing_street_address' => $billing_street_address,
						//  'billing_suburb'  =>  $billing_suburb,
						 'billing_city' => $billing_city,
						 'billing_postcode'  => $billing_postcode,
						 'billing_state' => $billing_state,
						 'billing_country'  =>  $billing_country,

						 'payment_method'  =>  $paymentMethodName,
						//  'cc_type' => $cc_type,
						//  'cc_owner'  => $cc_owner,
						//  'cc_number' =>$cc_number,
						//  'cc_expires'  =>  $cc_expires,
						 'last_modified' => $last_modified,
						 'date_purchased'  => $date_purchased,
						 'order_price'  => $order_price,
						 'shipping_cost' =>$shipping_cost,
						 'shipping_method'  =>  $shipping_method,
						 'currency'  =>  $currency_code,
						 'currency_value' => $last_modified,
						 'coupon_code'		 =>		$code,
						 'coupon_amount' 	 =>		$coupon_amount,
						 'total_tax'		 =>		$total_tax,
						 'ordered_source' 	 => 	'2',
						 'delivery_phone'	 =>		$delivery_phone,
						 'billing_phone'	 =>		$billing_phone
					]);

				}else{

          //insert order
          $orders_id = DB::table('orders')->insertGetId(
					[	 'customers_id' => $customers_id,
						 'customers_name'  => $delivery_firstname.' '.$delivery_lastname,
						 'customers_street_address' => $delivery_street_address,
						//  'customers_suburb'  =>  $delivery_suburb,
						 'customers_city' => $delivery_city,
						 'customers_postcode'  => $delivery_postcode,
						 'customers_state' => $delivery_state,
						 'customers_country'  =>  $delivery_country,
						 'customers_telephone' => $customers_telephone,
						 'email'  => $email,

						 'delivery_name'  =>  $delivery_firstname.' '.$delivery_lastname,
						 'delivery_street_address' => $delivery_street_address,
						//  'delivery_suburb'  => $delivery_suburb,
						 'delivery_city' => $delivery_city,
						 'delivery_postcode'  =>  $delivery_postcode,
						 'delivery_state' => $delivery_state,
						 'delivery_country'  => $delivery_country,

						 'billing_name'  => $billing_firstname.' '.$billing_lastname,
						 'billing_street_address' => $billing_street_address,
						//  'billing_suburb'  =>  $billing_suburb,
						 'billing_city' => $billing_city,
						 'billing_postcode'  => $billing_postcode,
						 'billing_state' => $billing_state,
						 'billing_country'  =>  $billing_country,

						 'payment_method'  =>  $paymentMethodName,
						//  'cc_type' => $cc_type,
						//  'cc_owner'  => $cc_owner,
						//  'cc_number' =>$cc_number,
						//  'cc_expires'  =>  $cc_expires,
						 'last_modified' => $last_modified,
						 'date_purchased'  => $date_purchased,
						 'order_price'  => $order_price,
						 'shipping_cost' =>$shipping_cost,
						 'shipping_method'  =>  $shipping_method,
						 'currency'  =>  $currency_code,
						 'currency_value' => $last_modified,
						 'order_information' => json_encode($order_information),
						 'coupon_code'		 =>		$code,
						 'coupon_amount' 	 =>		$coupon_amount,
						 'total_tax'		 =>		$total_tax,
						 'ordered_source' 	 => 	'2',
						 'delivery_phone'	 =>		$delivery_phone,
						 'billing_phone'	 =>		$billing_phone,
					]);

				}
				 //orders status history
				 $orders_history_id = DB::table('orders_status_history')->insertGetId(
					[	 'orders_id'  => $orders_id,
						 'orders_status_id' => $orders_status,
						 'date_added'  => $date_added,
						 'customer_notified' =>'1',
						 'comments'  =>  $comments
					]);

				 foreach($request->products as $products){
            //dd($products['price'], $currency_code);
            $c_price = str_replace(',','',$products['price']);
            $c_final_price = str_replace(',','',$products['final_price']);
            $price = Orders::converttodefaultprice($c_price, $currency_code);
            // $final_price = $c_final_price*$products['customers_basket_quantity'];
            // $final_price = Orders::converttodefaultprice($final_price, $currency_code);

					$orders_products_id = DB::table('orders_products')->insertGetId(
					[
						 'orders_id' 		      => 	  $orders_id,
						 'products_id' 	 	    =>		$products['products_id'],
						 'products_name'	    => 	  $products['products_name'],
						 'products_price'	    =>  	$price,
						 'final_price' 		    =>  	$c_final_price,
						 'products_tax' 	    =>  	$products_tax,
						 'products_quantity'  =>  	1,
					]);

					// $inventory_ref_id = DB::table('inventory')->insertGetId([
					// 	'products_id'   		=>   $products['products_id'],
					// 	'reference_code'  		=>   '',
					// 	'stock'  				=>   $products['customers_basket_quantity'],
					// 	'admin_id'  			=>   0,
					// 	'added_date'	  		=>   time(),
					// 	'purchase_price'  		=>   0,
					// 	'stock_type'  			=>   'out',
          // ]);
          
          //Is Sold ----------------
          
          //------------------------
          
          $getAttr = DB::table('products_attributes')->where('products_id', '=', $products['products_id'])->first();
          $optionDescription = DB::table('products_options_descriptions')
            ->where('products_options_id', '=', $getAttr->options_id)
            ->where('language_id', '=', $request->language_id)
            ->first();

          $data->options_name = $optionDescription->options_name;

          $optionDescriptionValue = DB::table('products_options_values')
            ->join('products_options_values_descriptions', 'products_options_values_descriptions.products_options_values_id', '=', 'products_options_values.products_options_values_id')
            ->where('products_options_id', '=', $getAttr->options_values_id)
            ->where('language_id', '=', $request->language_id)
            ->first();
          if($optionDescriptionValue->products_options_id == 1){
            $one = $optionDescriptionValue->products_options_values_name;
            $two = $optionDescriptionValue->products_options_values_color;
          } else {
            $one = $optionDescriptionValue->products_options_values_name;
            $two = $optionDescriptionValue->products_options_values_size;
          }


					if(!empty($products['attributes'])){
						foreach($products['attributes'] as $attribute){
							DB::table('orders_products_attributes')->insert(
							[
								 'orders_id' => $orders_id,
								 'products_id'  => $products['products_id'],
								 'orders_products_id'  => $orders_products_id,
								 'products_options' =>$optionDescription->options_name,
                                 'products_options_values'  =>  $one,
                                //  'products_options_values_desc' => $two,
								//  'options_values_price'  =>  $attribute['options_values_price'],
								//  'price_prefix'  =>  $attribute['price_prefix']
							]);

							$products_attributes = DB::table('products_attributes')->where([
								['options_id', '=', $attribute['products_options_id']],
								['options_values_id', '=', $attribute['products_options_values_id']],
							])->get();

							// DB::table('inventory_detail')->insert([
							// 	'inventory_ref_id'  =>   $inventory_ref_id,
							// 	'products_id'  		=>   $products['products_id'],
							// 	'attribute_id'		=>   $products_attributes[0]->products_attributes_id,
							// ]);

						}
					}

				 }

				$responseData = array('status'=>'1', 'data'=>array(), 'customer_id' => $customers_id,'message'=>"Order has been placed successfully.");

				//send order email to user
				$order = DB::table('orders')
					->LeftJoin('orders_status_history', 'orders_status_history.orders_id', '=', 'orders.orders_id')
					->LeftJoin('orders_status', 'orders_status.orders_status_id', '=' ,'orders_status_history.orders_status_id')
          ->where('orders.orders_id', '=', $orders_id)
          ->orderby('orders_status_history.date_added', 'DESC')
          ->get();

        //foreach
        foreach($order as $data){
          $orders_id	 = $data->orders_id;

          $orders_products = DB::table('orders_products')
            ->join('products', 'products.products_id','=', 'orders_products.products_id')
            ->select('orders_products.*', 'products.products_image as image')
            ->where('orders_products.orders_id', '=', $orders_id)->get();
            $i = 0;
            $total_price  = 0;
            $product = array();
            $subtotal = 0;
            foreach($orders_products as $orders_products_data){
              $product_attribute = DB::table('orders_products_attributes')
                ->where([
                  ['orders_products_id', '=', $orders_products_data->orders_products_id],
                  ['orders_id', '=', $orders_products_data->orders_id],
                ])
                ->get();

              $orders_products_data->attribute = $product_attribute;
              $product[$i] = $orders_products_data;
              //$total_tax	 = $total_tax+$orders_products_data->products_tax;
              $total_price = $total_price+$orders_products[$i]->final_price;

              $subtotal += $orders_products[$i]->final_price;

              $i++;
            }

          $data->data = $product;
          $orders_data[] = $data;
        }

				$orders_status_history = DB::table('orders_status_history')
					->LeftJoin('orders_status', 'orders_status.orders_status_id', '=' ,'orders_status_history.orders_status_id')
					->orderBy('orders_status_history.date_added', 'desc')
					->where('orders_id', '=', $orders_id)->get();

				$orders_status = DB::table('orders_status')->get();

				$ordersData['orders_data']		 	 	      =	$orders_data;
				$ordersData['total_price']  			      =	$total_price;
				$ordersData['orders_status']			      =	$orders_status;
				$ordersData['orders_status_history']    =	$orders_status_history;
				$ordersData['subtotal']    				      =	$subtotal;


				//notification/email
				$myVar = new AlertController();
				$alertSetting = $myVar->orderAlert($ordersData);

			}else if($payment_status == "failed"){
				if(!empty($error_cybersource)){
					$return_error = $error_cybersource;
				}else{
					$return_error = 'Error while placing order.';
				}
				$responseData = array('status'=>'0', 'data'=>array(), 'message'=>$error_cybersource);
			}
  }else{
    $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function getorders($request)
{
  $validator = validator()->make($request->all(), [
    'customers_id' => 'required',
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
  $customers_id						  =  $request->customers_id;
  $language_id						  =  $request->language_id;
  $requested_currency       =  "SAR";
  $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
  $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
  $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
  $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
  $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
  $consumer_data['consumer_url']  	  =  __FUNCTION__;
  $authController = new AppSettingController();
  $authenticate = $authController->apiAuthenticate($consumer_data);

  if($authenticate==1){

    $order = DB::table('orders')->orderBy('customers_id', 'desc')
        ->where([
          ['customers_id', '=', $customers_id],
        ])
        ->select('orders_id', 'total_tax', 'customers_id', 'customers_name', 'order_price', 'currency', 'date_purchased')
        ->get();


    if(count($order) > 0){
      //foreach
      $index = '0';
      foreach($order as $data){
        $data->total_tax =  Orders::convertprice($data->total_tax, $requested_currency);
        $data->order_price =  Orders::convertprice($data->order_price, $requested_currency);
        // $data->shipping_cost =  Orders::convertprice($data->shipping_cost, $requested_currency);
        // $data->coupon_amount =  Orders::convertprice($data->coupon_amount, $requested_currency);

        $orders_id	 = $data->orders_id;

        $orders_status_history = DB::table('orders_status_history')
            ->LeftJoin('orders_status', 'orders_status.orders_status_id', '=', 'orders_status_history.orders_status_id')
            ->LeftJoin('orders_status_description', 'orders_status_description.orders_status_id', '=', 'orders_status_history.orders_status_id')
            ->select('orders_status_description.orders_status_name', 'orders_status.orders_status_id', 'orders_status_history.comments')
            ->where('orders_id', '=', $orders_id)
            ->orderby('orders_status_history.orders_status_history_id', 'ASC')
            ->get();

        $order[$index]->orders_status_id = $orders_status_history[0]->orders_status_id;
        $order[$index]->orders_status = $orders_status_history[0]->orders_status_name;
        // $order[$index]->customer_comments = $orders_status_history[0]->comments;

        $total_comments = count($orders_status_history);
        $i = 1;

        foreach($orders_status_history as $orders_status_history_data){

          if($total_comments == $i && $i != 1){
            $order[$index]->orders_status_id = $orders_status_history_data->orders_status_id;
            $order[$index]->orders_status = $orders_status_history_data->orders_status_name;
            // $order[$index]->admin_comments = $orders_status_history_data->comments;
          }else{
            $order[$index]->admin_comments = '';
          }

          $i++;
        }
        $orders_data[] = $data;
      $index++;
      }
        $responseData = array('status'=>'1', 'data'=>$orders_data, 'message'=>"Returned all orders.");
    }else{
        $orders_data = array();
        $responseData = array('status'=>'0', 'data'=>$orders_data, 'message'=>"Order is not placed yet.");
    }
  }else{
    $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function orderDetail($request)
{
  $validator = validator()->make($request->all(), [
    'order_id' => 'required',
    'customers_id' => 'required',
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
  $customers_id						  =  $request->customers_id;
  $language_id						  =  $request->language_id;
  $requested_currency       =  "SAR";
  $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
  $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
  $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
  $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
  $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
  $consumer_data['consumer_url']  	  =  __FUNCTION__;
  $authController = new AppSettingController();
  $authenticate = $authController->apiAuthenticate($consumer_data);

  if($authenticate==1){

    $data = DB::table('orders')->orderBy('customers_id', 'desc')
        ->where([
          ['customers_id', '=', $customers_id],
          ['orders_id', '=', $request->order_id]
        ])->first();


    if($data != null){
      //foreach
      // $index = '0';
      // foreach($order as $data){
        $data->total_tax =  Orders::convertprice($data->total_tax, $requested_currency);
        $data->order_price =  Orders::convertprice($data->order_price, $requested_currency);
        $data->shipping_cost =  Orders::convertprice($data->shipping_cost, $requested_currency);
        $data->coupon_amount =  Orders::convertprice($data->coupon_amount, $requested_currency);

        if(!empty($data->product_discount_percentage)){
          $product_ids = explode(',', $coupons[0]->product_ids);
          $data->product_ids =  $product_ids;
        }
        else{
          $data->product_ids = array();
        }

        if(!empty($data->discount_type)){
          $exclude_product_ids = explode(',', $data->discount_type);
          $data->discount_type =  $exclude_product_ids;
        }else{
          $data->discount_type =  array();
        }

        if(!empty($data->amount)){
          $product_categories = explode(',', $data[0]->amount);
          $data->amount =  $product_categories;
        }else{
          $data->amount =  array();
        }

        if(!empty($data->product_ids)){
          $excluded_product_categories = explode(',', $data->product_ids);
          $data->product_ids =  $excluded_product_categories;
        }else{
          $data->product_ids = array();
        }

        if(!empty($data->exclude_product_ids)){
          $email_restrictions = explode(',', $data->exclude_product_ids);
          $data->exclude_product_ids =  $email_restrictions;
        }else{
          $data->exclude_product_ids =  array();
        }

        if(!empty($data->usage_limit)){
          $used_by = explode(',', $data->usage_limit);
          $data->usage_limit =  $used_by;
        }else{
          $data->usage_limit =  array();
        }

        if(!empty($data->product_categories)){
          $used_by = explode(',', $data->product_categories);
          $data->product_categories =  $used_by;
        }else{
          $data->product_categories =  array();
        }

        if(!empty($data->excluded_product_categories)){
          $used_by = explode(',', $data->excluded_product_categories);
          $data->excluded_product_categories =  $used_by;
        }else{
          $data->excluded_product_categories =  array();
        }

        if(!empty($data->coupon_code)){

          $coupon_code =  $data->coupon_code;

          $coupon_datas = array();
          $index_c = 0;
          foreach(json_decode($coupon_code) as $coupon_codes){

            if(!empty($coupon_codes->code)){
              $code = explode(',', $coupon_codes->code);
              $coupon_datas[$index_c]['code'] =  $code[0];
            }else{
              $coupon_datas[$index_c]['code'] =  '';
            }

            if(!empty($coupon_codes->amount)){
              $amount = explode(',', $coupon_codes->amount);
              $amount =  Orders::convertprice($coupon_codes->amount, $requested_currency);
              $coupon_datas[$index_c]['amount'] =  $coupon_codes->amount;
            }else{
              $coupon_datas[$index_c]['amount'] =  '';
            }


            if(!empty($coupon_codes->discount_type)){
              $discount_type = explode(',', $coupon_codes->discount_type);
              $coupon_datas[$index_c]['discount_type'] =  $discount_type[0];
            }else{
              $coupon_datas[$index_c]['discount_type'] =  '';
            }

            $index_c++;
          }
          $data->coupons = $coupon_datas;
        }
        else{
          $coupon_code =  array();
          $data->coupons = $coupon_code;
        }

        unset($data->coupon_code);

        $orders_id	 = $data->orders_id;

        $orders_status_history = DB::table('orders_status_history')
            ->LeftJoin('orders_status', 'orders_status.orders_status_id', '=', 'orders_status_history.orders_status_id')
            ->LeftJoin('orders_status_description', 'orders_status_description.orders_status_id', '=', 'orders_status_history.orders_status_id')
            ->select('orders_status_description.orders_status_name', 'orders_status.orders_status_id', 'orders_status_history.comments')
            ->where('orders_id', '=', $orders_id)
            ->orderby('orders_status_history.orders_status_history_id', 'ASC')
            ->get();

        $data->orders_status_id = $orders_status_history[0]->orders_status_id;
        $data->orders_status = $orders_status_history[0]->orders_status_name;
        $data->customer_comments = $orders_status_history[0]->comments;

        $total_comments = count($orders_status_history);
        $i = 1;

        foreach($orders_status_history as $orders_status_history_data){

          if($total_comments == $i && $i != 1){
            $data->orders_status_id = $orders_status_history_data->orders_status_id;
            $data->orders_status = $orders_status_history_data->orders_status_name;
            $data->admin_comments = $orders_status_history_data->comments;
          }else{
            $data->admin_comments = '';
          }

          $i++;
        }

        // $data->orders_id;
        $getProduct = DB::table('orders_products')->where('orders_id', '=', $data->orders_id)->first();
        $product_info = DB::table('products')->where('products_id', '=', $getProduct->products_id)->first();
        // dd($product_info);

        $condition = DB::table('condition_description')
          ->where('condition_id', '=', $product_info->condition_id)
          ->where('language_id', '=', $request->language_id)
          ->first();

        $data->condition_id = $condition->condition_id;
        $data->condition_name = $condition->condition_name;

        if($product_info->purchase_type == 0) {
          $data->purchase = trans('labels.Sell');
        } else {
          $data->purchase = trans('labels.Rental');
        }

        $products_images = DB::table('products_images')
            ->select('id', 'image', 'sort_order')
            ->where('products_id', '=', $getProduct->products_id)
            ->orderBy('sort_order', 'ASC')
            ->get();
        $data->images = $products_images;

        $sub_categories = DB::table('products_to_categories')
            ->leftjoin('categories', 'categories.categories_id', 'products_to_categories.categories_id')
            ->leftjoin('categories_description', 'categories_description.categories_id', 'products_to_categories.categories_id')
            ->select('categories.categories_id', 'categories_description.categories_name', 'categories.parent_id')
            ->where('products_id', '=', $getProduct->products_id)
            ->where('categories_description.language_id', '=', $request->language_id)
            ->first();

        $main_categories = DB::table('categories')
            ->leftjoin('categories_description', 'categories_description.categories_id', 'categories.categories_id')
            ->select('categories.categories_id', 'categories_description.categories_name', 'categories.categories_image', 'categories.parent_id')
            ->where('categories.categories_id', '=', $sub_categories->parent_id)
            ->where('categories_description.language_id', '=', $request->language_id)
            ->first();

        $data->main_categories = $main_categories->categories_name;

        $data->sub_categories = $sub_categories->categories_name;

        $brand = DB::table('brands')
            ->join('brand_description', 'brand_description.brand_id', '=', 'brands.brand_id')
            ->where('language_id', '=', $request->language_id)
            ->where('brands.brand_id', '=', $product_info->brand_id)
            ->select('brands.brand_id', 'brand_name')
            ->first();

        $data->brand = $brand->brand_name;

        $getAttr = DB::table('products_attributes')->where('products_id', '=', $getProduct->products_id)->first();
        $optionDescription = DB::table('products_options_descriptions')
          ->where('products_options_id', '=', $getAttr->options_id)
          ->where('language_id', '=', $request->language_id)
          ->first();

        $data->options_name = $optionDescription->options_name;

        $optionDescriptionValue = DB::table('products_options_values')
          ->join('products_options_values_descriptions', 'products_options_values_descriptions.products_options_values_id', '=', 'products_options_values.products_options_values_id')
          ->where('products_options_id', '=', $getAttr->options_values_id)
          ->where('language_id', '=', $request->language_id)
          ->first();
        if($optionDescriptionValue->products_options_id == 1){
          $data->products_options_values_name = $optionDescriptionValue->products_options_values_name;
          $data->products_options_values_color = $optionDescriptionValue->products_options_values_color;
        } else {
          $data->products_options_values_name = $optionDescriptionValue->products_options_values_name;
          $data->products_options_values_size = $optionDescriptionValue->products_options_values_size;
        }
        

        // dd($optionDescriptionValue);

        $orders_products = DB::table('orders_products')
        ->join('products', 'products.products_id','=', 'orders_products.products_id')
        ->select('orders_products.*')
        ->where('orders_products.orders_id', '=', $orders_id)->get();
        $k = 0;
        $product = array();
        foreach($orders_products as $orders_products_data){
          $orders_products_data->products_price =  Orders::convertprice($orders_products_data->products_price, $requested_currency);
          $orders_products_data->final_price =  Orders::convertprice($orders_products_data->final_price, $requested_currency);
          //categories
          $categories = DB::table('products_to_categories')
                  ->leftjoin('categories','categories.categories_id','products_to_categories.categories_id')
                  ->leftjoin('categories_description','categories_description.categories_id','products_to_categories.categories_id')
                  ->select('categories.categories_id','categories_description.categories_name',
                    'categories.categories_image','categories.categories_icon', 'categories.parent_id')
                  ->where('products_id','=', $orders_products_data->products_id)
                  ->where('categories_description.language_id','=',$language_id)->get();

          $orders_products_data->categories =  $categories;

          $product_attribute = DB::table('orders_products_attributes')
            ->where([
              ['orders_products_id', '=', $orders_products_data->orders_products_id],
              ['orders_id', '=', $orders_products_data->orders_id],
            ])
            ->get();

          $orders_products_data->attributes = $product_attribute;
          $product[$k] = $orders_products_data;
          $k++;
        }
        $data->data = $product;
        $orders_data[] = $data;
      // $index++;
      // }
        $responseData = array('status'=>'1', 'data'=>$orders_data, 'message'=>"Returned all orders.");
    }else{
        $orders_data = array();
        $responseData = array('status'=>'0', 'data'=>$orders_data, 'message'=>"Order is not placed yet.");
    }
  }else{
    $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

public static function updatestatus($request)
{

  		$consumer_data 		 				  =  array();
  		$orders_id							  =  $request->orders_id;
  		$consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
  		$consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
  		$consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
  		$consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
      $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
  		$consumer_data['consumer_url']  	  =  __FUNCTION__;
  		$authController = new AppSettingController();
  		$authenticate = $authController->apiAuthenticate($consumer_data);

  		if($authenticate==1){

  			$date_added			=    date('Y-m-d h:i:s');
  			$comments			=	 '';
  			$orders_history_id = DB::table('orders_status_history')->insertGetId(
  				[	 'orders_id'  => $orders_id,
  					 'orders_status_id' => '3',
  					 'date_added'  => $date_added,
  					 'customer_notified' =>'1',
  					 'comments'  =>  $comments
  				]);

  			$responseData = array('status'=>'1', 'data'=>array(), 'message'=>"Status has been changed succefully.");

  		}else{
  			$responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  		}
  		$orderResponse = json_encode($responseData);

      return $orderResponse;
}

public static function get_client_ip_env(){
		$ipaddress = '';
		if (getenv('HTTP_CLIENT_IP'))
			$ipaddress = getenv('HTTP_CLIENT_IP');
		else if(getenv('HTTP_X_FORWARDED_FOR'))
			$ipaddress = getenv('HTTP_X_FORWARDED_FOR');
		else if(getenv('HTTP_X_FORWARDED'))
			$ipaddress = getenv('HTTP_X_FORWARDED');
		else if(getenv('HTTP_FORWARDED_FOR'))
			$ipaddress = getenv('HTTP_FORWARDED_FOR');
		else if(getenv('HTTP_FORWARDED'))
			$ipaddress = getenv('HTTP_FORWARDED');
		else if(getenv('REMOTE_ADDR'))
			$ipaddress = getenv('REMOTE_ADDR');
		else
			$ipaddress = 'UNKNOWN';

		return $ipaddress;
}

public static function refund($request)
{
  $validator = validator()->make($request->all(), [
    'order_id' => 'required',
    'customer_id' => 'required',
    'reason' => 'required',
    'image' => 'required',
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

  $consumer_data 		 				=  array();
  $customers_id						  =  $request->customer_id;
  $order_id                 =  $request->order_id;
  $return_reason            =  $request->reason;
  $return_image             =  $request->image;
  $language_id						  =  $request->language_id;
  $consumer_data['consumer_key'] 	 	  =  request()->header('consumer-key');
  $consumer_data['consumer_secret']	  =  request()->header('consumer-secret');
  $consumer_data['consumer_nonce']	  =  request()->header('consumer-nonce');
  $consumer_data['consumer_device_id']  =  request()->header('consumer-device-id');
  $consumer_data['consumer_ip']  =  request()->header('consumer-ip');
  $consumer_data['consumer_url']  	  =  __FUNCTION__;
  $authController = new AppSettingController();
  $authenticate = $authController->apiAuthenticate($consumer_data);

  if($authenticate==1){

    if ($request->image) {
      $image = substr($request->image, strpos($request->image, ",") + 1);
      $img = base64_decode($image);
      $dir="images/refunds";
      if (!file_exists($dir) and !is_dir($dir)) {
          mkdir($dir);
      }
      $uploadfile = $dir."/refunds_".Str::random(60).".jpg";
      file_put_contents(base_path().'/'.$uploadfile, $img);
      $product_photo=$uploadfile;
    }

    $cart = DB::table('returns')
      ->insert([
        'customer_id' => $customers_id,
        'order_id' => $order_id,
        'return_reason' => $return_reason,
        'return_image' => $product_photo,
        'created_at' => date('Y-m-d h:i:s')
      ]);
    $responseData = array('status'=>'1', 'data'=>array(), 'message'=>"Added To Cart Successfully");
  }else{
    $responseData = array('status'=>'0', 'data'=>array(),  'message'=>"Unauthenticated call.");
  }
  $orderResponse = json_encode($responseData);

  return $orderResponse;
}

}
