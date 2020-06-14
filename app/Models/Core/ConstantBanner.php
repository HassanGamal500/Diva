<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class constantBanner extends Model
{
    //

    public function __construct()
  {
      $varsetting = new SiteSettingController();
      $this->varsetting = $varsetting;
  }
    use Sortable;

    public function images(){
        return $this->belongsTo('App\Images');
    }

    public function image_category(){
        return $this->belongsTo('App\Image_category');
    }

    public $sortable = ['banners_id','banners_title','created_at'];

    public static function paginator(){
        $result = array();
		$message = array();

        $banners = DB::table('constant_banners')
        ->join('banner_description', 'banner_description.constant_banners_id', 'constant_banners.banners_id')
        ->select('constant_banners.banners_id', 'banners_image', 'banners_title')
        ->where('language_id', '=', language())
		->orderBy('constant_banners.banners_id','desc')
		->get();

		$result['message'] = $message;
        $result['banners'] = $banners;
        return $result;
    }

    public static function existbanner($request){
        $exist = DB::table('constant_banners')->where([
            'type'					 =>	  $request->type,
            'languages_id'			 =>	  $request->languages_id
            ])->get();


        if(count($exist)>0){
            return 1;
        }else{
            return 0;
        }

    }

    public function insert($request){
        if ($request->hasFile('banner_image')) {
            $banner_image = Storage::disk('edit_path')->putFile('images/banners', $request->file('banner_image'));
        } else {
            $banner_image = '';
        }
        
        $banner = DB::table('constant_banners')->insertGetId([
                'date_added'	 		 =>   date('Y-m-d H:i:s'),
                'banners_image'			 =>	  $banner_image,
                'status'	 			 =>   $request->status,
                ]);
        
        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('banner_description')->insert([
                'banners_title'  		 =>   $request->banner_title[$language->languages_id],
                'banners_body'   =>     $request->banner_body[$language->languages_id],
                'constant_banners_id' => $banner,
                'language_id'    =>    $language->languages_id,
            ]);
        }
    }


    public static function edit($request){

        $banners = DB::table('constant_banners')
            ->leftJoin('banner_description', 'banner_description.constant_banners_id', 'constant_banners.banners_id')
            ->leftjoin('languages', 'languages.languages_id', '=', 'banner_description.language_id')
            ->where('banners_id', $request->id)
            ->select('constant_banners.*', 'banners_title', 'banners_body', 'language_id', 'name')
            ->get();
        // dd($banners);

        return $banners;

    }

    public static function existbannerforupdate($request){
        $exist = DB::table('constant_banners')->where([
            'type'					 =>	  $request->type,
            'languages_id'			 =>	  $request->languages_id
            ])->where('banners_id','!=',$request->id)->get();


        if(count($exist)>0){
            return 1;
        }else{
            return 0;
        }

    }

    public function updatebanner($request){
        // dd($request);

        $getImage = DB::table('constant_banners')->where('banners_id', '=', $request->id)->first();
        if ($request->hasFile('banner_image')) {
            $myFile = public_path($getImage->banners_image);
            File::delete($myFile);
            $banner_image = Storage::disk('edit_path')->putFile('images/banners', $request->file('banner_image'));
        } else {
            $banner_image = $request->oldImage;
        }

        $banner = DB::table('constant_banners')->where('banners_id', $request->id)->update([
            'date_added'	 		 =>   date('Y-m-d H:i:s'),
            'banners_image'			 =>	  $banner_image,
            'status'	 			 =>   $request->status,
        ]);

        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('banner_description')
                ->where('constant_banners_id', '=', $request->id)
                ->where('language_id', '=', $language->languages_id)
                ->update([
                    'banners_title'  		 =>   $request->banner_title[$language->languages_id],
                    'banners_body'   =>     $request->banner_body[$language->languages_id]
                ]);
        }
		
    }

    public static function deletebanners($request){
        $getImage = DB::table('constant_banners')->where('banners_id', '=', $request->banners_id)->first();
        $myFile = public_path($getImage->banners_image);
        File::delete($myFile);
        DB::table('constant_banners')->where('banners_id', $request->banners_id)->delete();
        DB::table('banner_description')->where('constant_banners_id', '=', $request->banners_id)->delete();
    }

}
