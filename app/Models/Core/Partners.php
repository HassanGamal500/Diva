<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class partners extends Model
{
    //

    public function __construct()
  {
      $varsetting = new SiteSettingController();
      $this->varsetting = $varsetting;
  }

    public static function paginator(){
        $result = array();
		$message = array();

        $partners = DB::table('partners')->orderBy('partner_id','desc')->get();
		$result['message'] = $message;
        $result['partners'] = $partners;
        return $result;
    }

    public function insert($request){
        if ($request->hasFile('partner_image')) {
            $partner_image = Storage::disk('edit_path')->putFile('images/partners', $request->file('partner_image'));
        } else {
            $partner_image = '';
        }
        
        $partner = DB::table('partners')->insertGetId([
            'partner_image' =>	  $partner_image,
            'status'	 =>   $request->status,
        ]);
    }

    public static function edit($request){

        $partners = DB::table('partners')->where('partner_id', $request->id)->get();

        return $partners;

    }

    public function updatepartner($request){

        $getImage = DB::table('partners')->where('partner_id', '=', $request->id)->first();
        if ($request->hasFile('partner_image')) {
            $myFile = public_path('images/'.$getImage->partner_image);
            File::delete($myFile);
            $partner_image = Storage::disk('edit_path')->putFile('images/partners', $request->file('partner_image'));
        } else {
            $partner_image = $request->oldImage;
        }

        $partners = DB::table('partners')->where('partner_id', $request->id)->update([
            'partner_image'			=>  $partner_image,
            'status'	 			=>  $request->status,
        ]);
		
    }

    public static function deletepartner($request){
        $getImage = DB::table('partners')->where('partner_id', '=', $request->partner_id)->first();
        $myFile = public_path('images/'.$getImage->partner_image);
        File::delete($myFile);
        DB::table('partners')->where('partner_id', $request->partner_id)->delete();
    }

}
