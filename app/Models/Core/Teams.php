<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class teams extends Model
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

        $teams = DB::table('teams')->orderBy('team_id','desc')->get();
		$result['message'] = $message;
        $result['teams'] = $teams;
        return $result;
    }

    public function insert($request){
        if ($request->hasFile('team_image')) {
            $team_image = Storage::disk('edit_path')->putFile('images/teams', $request->file('team_image'));
        } else {
            $team_image = '';
        }
        
        $team = DB::table('teams')->insertGetId([
            'team_name' => $request->team_name,
			'team_professional' => $request->team_professional,
			'team_facebook' => $request->team_facebook,
			'team_google' => $request->team_google,
			'team_instagram' => $request->team_instagram,
			'team_twitter' => $request->team_twitter,
			'team_linkedin' => $request->team_linkedin,
            'team_image' =>	  $team_image,
            'status'	 =>   $request->status,
        ]);
    }

    public static function edit($request){

        $teams = DB::table('teams')->where('team_id', $request->id)->get();

        return $teams;

    }

    public function updateteam($request){

        $getImage = DB::table('teams')->where('team_id', '=', $request->id)->first();
        if ($request->hasFile('team_image')) {
            $myFile = public_path($getImage->team_image);
            File::delete($myFile);
            $team_image = Storage::disk('edit_path')->putFile('images/teams', $request->file('team_image'));
        } else {
            $team_image = $request->oldImage;
        }

        $team = DB::table('teams')->where('team_id', $request->id)->update([
            'team_name'             =>  $request->team_name,
			'team_professional'     =>  $request->team_professional,
			'team_facebook'         =>  $request->team_facebook,
			'team_google'           =>  $request->team_google,
			'team_instagram'        =>  $request->team_instagram,
			'team_twitter'          =>  $request->team_twitter,
			'team_linkedin'         =>  $request->team_linkedin,
            'team_image'			=>  $team_image,
            'status'	 			=>  $request->status,
        ]);
		
    }

    public static function deleteteam($request){
        $getImage = DB::table('teams')->where('team_id', '=', $request->team_id)->first();
        $myFile = public_path($getImage->team_image);
        File::delete($myFile);
        DB::table('teams')->where('team_id', $request->team_id)->delete();
    }

}
