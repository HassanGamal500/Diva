<?php

namespace App\Models\Core;;

use http\Env\Request;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Kyslik\ColumnSortable\Sortable;
use App\Http\Controllers\AdminControllers\SiteSettingController;
use Illuminate\Support\Facades\Validator;
use App\shipping_description;
use App\Models\Core\Shipping_method;

class Shipping_method extends Model
{
    //

    public function __construct()
    {
        $varsetting = new SiteSettingController();
        $this->varsetting = $varsetting;
    }

    //
    use Sortable;
    public function shipping_description(){
        return $this->hasOne('App\shipping_description');
    }

    public $sortableAs = ['created_at'];
    public $sortable = ['shipping_methods_id', 'shipping_name','created_at','updated_at'];

    public function paginator(){
        $shippings =  Shipping_method::sortable(['shipping_methods_id'=>'desc'])
            ->leftJoin('shipping_description','shipping_description.shipping_method_id', '=', 'shipping_methods.shipping_methods_id')
            ->select('shipping_methods.shipping_methods_id as id', 'shipping_name as name', 'shipping_phone as phone', 'shipping_email as email', 'shipping_price as price')
            ->where('language_id', '=', language())
            ->paginate(10);
        foreach($shippings as $shipping){
            
        }
        return $shippings;
    }

    public function getter($language_id){
         if($language_id == null){
           $language_id = language();
         }
         $manufacturers =  Manufacturers::sortable(['manufacturers_id'=>'desc'])->leftJoin('manufacturers_info','manufacturers_info.manufacturers_id', '=', 'manufacturers.manufacturers_id')
                                   ->leftJoin('images','images.id', '=', 'manufacturers.manufacturer_image')
                                   ->leftJoin('image_categories','image_categories.image_id', '=', 'manufacturers.manufacturer_image')
                                   ->select('manufacturers.manufacturers_id as id', 'manufacturers.manufacturer_image as image',  'manufacturers.manufacturer_name as name', 'manufacturers_info.manufacturers_url as url', 'manufacturers_info.url_clicked', 'manufacturers_info.date_last_click as clik_date','image_categories.path as path')
                                   ->where('manufacturers_info.languages_id', $language_id)->where('image_categories.image_type','=','THUMBNAIL' or 'image_categories.image_type','=','ACTUAL')->get();
        return $manufacturers;
    }

    public function insert($request){

        $slug = $request->shipping_name[1];
        $date_added	= date('y-m-d h:i:s');
        $languages_id 	=  '1';
        $slug_count = 0;

        do{
            if($slug_count==0){
                $currentSlug = $this->varsetting->slugify($request->name);
            }else{
                $currentSlug = $this->varsetting->slugify($request->name.'-'.$slug_count);
            }
            $slug = $currentSlug;

            $checkSlug = $this->slug($currentSlug);

            $slug_count++;
        }

        while(count($checkSlug)>0);

        $shipping = DB::table('shipping_methods')->insertGetId([
            'shipping_phone' => $request->shipping_phone,
            'shipping_email' => $request->shipping_email,
            'shipping_price' => $request->shipping_price,
            'status' => $request->isActive,
            'created_at'  =>  $date_added,
        ]);

        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('shipping_description')->insert([
                'shipping_method_id'    =>  $shipping,
                'shipping_name'   =>     $request->shipping_name[$language->languages_id],
                'language_id'    =>    $language->languages_id,
            ]);
        }

    }

    public function edit($shipping_id){

        $editShipping = DB::table('shipping_methods')
            ->join('shipping_description','shipping_description.shipping_method_id', '=', 'shipping_methods.shipping_methods_id')
            ->where('shipping_methods.shipping_methods_id', '=', $shipping_id)
            ->select('shipping_methods.shipping_methods_id as id', 'shipping_name as name', 'shipping_phone as phone', 'shipping_email as email', 'shipping_price as price', 'status')
            ->get();

            return $editShipping;
    }

    public function slug($currentSlug){

        $checkSlug = DB::table('brand_description')->where('brand_name',$currentSlug)->get();

        return $checkSlug;
    }

    public function updaterecord($request){

        $last_modified 	=   date('y-m-d h:i:s');
        $languages_id = '1';

        DB::table('shipping_methods')->where('shipping_methods_id', $request->id)->update([
            'shipping_phone' => $request->shipping_phone,
            'shipping_email' => $request->shipping_email,
            'shipping_price' => $request->shipping_price,
            'status' => $request->isActive,
            'updated_at'    =>  $last_modified,
        ]);

        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('shipping_description')
                ->where('shipping_method_id', $request->id)
                ->where('language_id', '=', $language->languages_id)
                ->update([
                    'shipping_name'    =>  $request->shipping_name[$language->languages_id]
                ]);
        }

    }

    public function destroyrecord($request){

        DB::table('shipping_methods')->where('shipping_methods_id', $request->shipping_methods_id)->delete();
        DB::table('shipping_description')->where('shipping_method_id', $request->shipping_methods_id)->delete();

    }










    public function upsDescription(){
        $ups_description = DB::table('shipping_description')->where([
            ['language_id', '=', language()],
            ['table_name', '=', 'ups_shipping']
        ])->get();
        return $ups_description;
    }

    public function ups_shipping(){
        $ups_shipping = DB::table('ups_shipping')
            ->where('ups_id', '=', '1')->first();
        return $ups_shipping;
    }

    public function flateRate(){
        $flate_rate = DB::table('flate_rate')->first();
        return $flate_rate;
    }


    public function flateRateDescription(){
        $flatrate_description = DB::table('shipping_description')->where([
            ['language_id', '=', language()],
            ['table_name', '=', 'flate_rate']
        ])->get();
        return $flatrate_description;

    }

    public function updateshipingStatus($request,$status){
       $updatestatus =  DB::table('shipping_methods')->where('shipping_methods_id', '=', $request->id)->update([
            'status'		 =>	  $status
        ]);
       return $updatestatus;
    }


    public function shipingMethod(){
        $shipping_methods = DB::table('shipping_methods')
            ->leftJoin('shipping_description','shipping_description.table_name','=','shipping_methods.table_name')
            ->where('shipping_description.language_id',language())
            ->paginate(10);
        return $shipping_methods;
    }

    public function countriues(){
        $countries = DB::table('countries')->get();
        return $countries;
    }

    public function shipingMethopd(){
        $shipping_methods = DB::table('shipping_methods')->where('shipping_methods_id', '=', '1')->get();
        return $shipping_methods;
    }


    public  function description($languages_data,$shipping_methods){
        $description = DB::table('shipping_description')->where([
            ['language_id', '=', $languages_data->languages_id],
            ['table_name', '=', $shipping_methods[0]->table_name],
        ])->get();
        return $description;
    }

    public function shipingMethods(){
        $shipping_methods = DB::table('flate_rate')->where('id', '=', '1')->get();
        return $shipping_methods;
    }

    public function shipingMethod4(){
        $shipping_methods = DB::table('shipping_methods')->where('shipping_methods_id', '=', '4')->get();
        return $shipping_methods;
    }


    public function updateflaterate($request){

      $flateRate =  DB::table('flate_rate')->where('id', '=', '1')->update([
            'flate_rate'  		 =>   $request->flate_rate,
            'currency'			 =>	  $request->currency
        ]);

      return $flateRate;

    }

    public function updateShipingMethodStatus($request){

        $methodStatus = DB::table('shipping_methods')->where('shipping_methods_id', '=', '4')->update([
            'status'  		 =>   $request->status,
        ]);

        return $methodStatus;

    }

    public function CheckExit($table_name,$languages_data){


        $checkExist = DB::table('shipping_description')->where('table_name','=',$table_name)->where('language_id','=',$languages_data->languages_id)->get();


        return $checkExist;

    }

    public function shipingDescription($table_name,$languages_data_id,$request_name){

        $shipingDes = DB::table('shipping_description')->where('table_name','=',$table_name)->where('language_id','=',$languages_data_id)->update([
            'name'  	    		 =>   $request_name,
        ]);

        return $shipingDes;

    }

    public function insertDescription($request_name,$languages_data_id,$table_name){

      $insertDescription =  DB::table('shipping_description')->insert([
            'name'  	     		 =>   $request_name,
            'language_id'			 =>   $languages_data_id,
            'table_name'			 =>   $table_name,
        ]);

      return $insertDescription ;

    }

    public function insterUPS($request){

       $insertUPD = DB::table('ups_shipping')->where('ups_id', '=', '1')->update([
            'pickup_method'  		 =>   $request->pickup_method,
            'serviceType'			 =>   implode(',', $request->serviceType),
            'shippingEnvironment'	 =>   $request->shippingEnvironment,
            'user_name'	 			 =>   $request->user_name,
            'access_key'	 		 =>   $request->access_key,
            'password'	 			 =>   $request->password,
            'address_line_1'	 	 =>   $request->address_line_1,
            'country'	 			 =>   $request->country,
            'state'	 			 	 =>   $request->state,
            'post_code'	 			 =>   $request->post_code,
            'city'	 				 =>   $request->city,

        ]);
       return $insertUPD;

    }


    public function updateUPSstatus($request){

       $shippingMethod = DB::table('shipping_methods')->where('shipping_methods_id', '=', '1')->update([
            'status'  		 =>   $request->status,
        ]);

       return $shippingMethod;

    }

    public function updateUPSshippingDescription($table_name,$languages_data_id,$request_name,$sub_labels){
        DB::table('shipping_description')->where('table_name','=',$table_name)->where('language_id','=',$languages_data_id)->update([
            'name'  	    		=>   $request_name,
            'sub_labels'  	    	=>   json_encode($sub_labels),
        ]);
    }

    public function insertUPSinsetDesctription($request_name,$sub_labels,$languages_data_id,$table_name){

       $UpsInsert = DB::table('shipping_description')->insert([
            'name'  	     		 =>   $request_name,
            'sub_labels'  	    	 =>   json_encode($sub_labels),
            'language_id'			 =>   $languages_data_id,
            'table_name'			 =>   $table_name,
        ]);

        return $UpsInsert;
    }

    public function defualtshipingMethod(){

        $updateDefualt = DB::table('shipping_methods')->update([
            'isDefault'  		 =>   0,
        ]);

        return $updateDefualt;

    }
    public function DefualtshipingMethod1($request){

       $defualt01 = DB::table('shipping_methods')->where('shipping_methods_id', '=', $request->shipping_id)->update([
            'isDefault'  		 =>   1,
        ]);

       return $defualt01;

    }

    public function getshippingMethod($request){


        $shppingMethods = DB::table('shipping_methods')
            ->where('table_name', $request->table_name)->get();


        return $shppingMethods;


    }


    public function getdescription($languages_data_id,$table_name){

        $description = DB::table('shipping_description')->where([
            ['language_id', '=', $languages_data_id],
            ['table_name', '=', $table_name],
        ])->get();

        return $description;

    }

    public function updatecheckExit($table_name,$languages_data_id){

        $checkExist = DB::table('shipping_description')->where('table_name','=',$table_name)
            ->where('language_id','=',$languages_data_id)->get();

        return $checkExist;

    }

    public function ifcheckIsSet($table_name,$languages_data_id,$re_name){

      $ifcheckis =  DB::table('shipping_description')->where('table_name','=',$table_name)->where('language_id','=',$languages_data_id)->update([
            'name'  	    		 =>   $re_name,
        ]);


        return $ifcheckis;

    }


    public function ifnotsetcheck($re_name,$languages_data_id,$table_name){

        $ifnotsetcheck = DB::table('shipping_description')->insert([
            'name'  	     		 =>   $re_name,
            'language_id'			 =>   $languages_data_id,
            'table_name'			 =>   $table_name,
        ]);

        return $ifnotsetcheck;

    }


}
