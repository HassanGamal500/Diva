<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class Zones extends Model
{
    //
    
    public function __construct()
    {
        $varsetting = new SiteSettingController();
        $this->varsetting = $varsetting;
    }

    use Sortable;
    public function country(){
        return $this->belongsTo('App\Country');
    }

    public $sortable = ['zone_id','zone_code','zone_name'];
    public $sortableAs = ['countries_name'];

    public function getter(){
      $zones = DB::table('countries')
            ->join('country_description', 'country_description.countries_id', '=', 'countries.countries_id')
            ->select('countries.countries_id as id', 'countries_name as name')
            ->where('language_id', '=', language())
            ->get();
      return $zones;
    }

    public function paginator(){
      $zones = DB::table('zones')
            ->join('zone_description', 'zone_description.zone_id', '=', 'zones.zone_id')
            ->join('country_description', 'country_description.countries_id', '=', 'zones.zone_country_id')
            ->select('zones.zone_id as id', 'zone_name as name', 'countries_name')
            ->where('zone_description.language_id', '=', language())
            ->where('country_description.language_id', '=', language())
            ->get();
            // dd($zones);
      return $zones;
    }

    public function filter($data){
        $name = $data['FilterBy'];
        $param = $data['parameter'];

        $result = array();
        $message = array();
        $errorMessage = array();

        switch ( $name ) {
            case 'Zone':
                $zones = Zones::sortable(['zone_id'=>'ASC'])->where('zone_name', 'LIKE', '%' . $param . '%')
                    ->LeftJoin('countries','zones.zone_country_id','=','countries.countries_id')
                    ->paginate(30);
                break;
            case 'Code':
                $zones = Zones::sortable(['zone_id'=>'ASC'])->where('zone_name', 'LIKE', '%' . $param . '%')
                    ->LeftJoin('countries','zones.zone_country_id','=','countries.countries_id')
                    ->paginate(30);
                break;
            case 'Country':
                $zones = Zones::sortable(['zone_id'=>'ASC'])
                    ->LeftJoin('countries','zones.zone_country_id','=','countries.countries_id')
                    ->where('countries_name', 'LIKE', '%' . $param . '%')
                    ->paginate(30);
                break;
            default:
                $zones = Zones::sortable(['zone_id'=>'ASC'])
                    ->LeftJoin('countries','zones.zone_country_id','=','countries.countries_id')
                    ->paginate(30);
                break;
        }

        return $zones;
    }

    public function getcountries(){
        $countries = DB::table('countries')
            ->join('country_description', 'country_description.countries_id', '=', 'countries.countries_id')
            ->select('countries.countries_id as id', 'countries_name as name')
            ->where('language_id', '=', language())
            ->get();
        return $countries;
    }


    public function insert($request){
        
        $date_added	= date('y-m-d h:i:s');
        $zone_id = DB::table('zones')->insertGetId([
            'zone_country_id'  	=>   $request->zone_country_id,
            'status'                => $request->isActive,
            'created_at'            =>  $date_added,
        ]);

        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('zone_description')->insert([
                'zone_id'      =>  $zone_id,
                'zone_name'    =>     $request->zone_name[$language->languages_id],
                'language_id'  =>    $language->languages_id,
            ]);
        }
        
        return $zone_id;
    }

    public function edit($request){
        // $zones =  DB::table('zones')->where('zone_id', $request->id)->first();
        $zones = DB::table('zones')
            ->join('zone_description', 'zone_description.zone_id', '=', 'zones.zone_id')
            ->select('zones.zone_id as id', 'zone_name as name', 'zone_country_id', 'status')
            ->where('zones.zone_id', $request->id)
            ->get();
        return $zones;
    }


    public function updaterecord($request){
        // DB::table('zones')->where('zone_id', $request->zone_id)->update([
        //     'zone_name'  		 =>   $request->zone_name,
        //     // 'zone_code'			 =>   $request->zone_code,
        //     'zone_country_id'	 =>   $request->zone_country_id
        // ]);
        
        $last_modified 	=   date('y-m-d h:i:s');
        $languages_id = language();

        DB::table('zones')->where('zone_id', $request->zone_id)->update([
            'zone_country_id'	    =>   $request->zone_country_id,
            'status'                => $request->status,
            'updated_at'            =>  $last_modified,
        ]);
        for ($i=1; $i <= 2; $i++) { 
            DB::table('zone_description')
            ->where('zone_id', $request->zone_id)
            ->where('language_id', '=', $i)
            ->update([
                'zone_name'    =>  $request->zone_name[$i]
            ]);
        }
    }
    public function getcountry($request){
        $country = DB::table('countries')->where('countries_id', $request->id)->get();
        return $country;
    }

    public function deleterecord($request){
      DB::table('zones')->where('zone_id', $request->id)->delete();
      DB::table('zone_description')->where('zone_id', $request->id)->delete();
    }



}
