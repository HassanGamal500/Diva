<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class Countries extends Model
{
    
    public function __construct()
    {
        $varsetting = new SiteSettingController();
        $this->varsetting = $varsetting;
    }

    use Sortable;
    public $sortable = ['countries_id','countries_name','countries_iso_code_2','countries_iso_code_3'];

    public function getter(){
      $countries = DB::table('countries')
            ->join('country_description', 'country_description.countries_id', '=', 'countries.countries_id')
            ->select('countries.countries_id as id', 'countries_name as name')
            ->where('language_id', '=', language())
            ->get();
        return $countries;
    }

    public function paginator(){
        $countries = DB::table('countries')
            ->join('country_description', 'country_description.countries_id', '=', 'countries.countries_id')
            ->select('countries.countries_id as id', 'countries_name as name')
            ->where('language_id', '=', language())
            ->get();
        return $countries;
    }

    public function filter($data){

        $name = $data['FilterBy'];
        $param = $data['parameter'];

        $countryData = array();
        $message = array();
        $errorMessage = array();

        switch ( $name ) {
            case 'CountryName':
                 $countries = Countries::sortable(['countries_id'=>'ASC'])->where('countries_name', 'LIKE', '%' . $param . '%')
                    ->orderBy('countries_id','ASC')
                    ->paginate(30);
                break;
            case 'ISOCode2':
                $countries = Countries::sortable(['countries_id'=>'ASC'])->where('countries_iso_code_2', 'LIKE', '%' . $param . '%')
                    ->paginate(30);
                break;
            case 'ISOCode3':

                $countries = Countries::sortable(['countries_id'=>'ASC'])->where('countries_iso_code_3', 'LIKE', '%' . $param . '%')
                    ->paginate(30);
                break;
           default :
             $countries = Countries::sortable(['countries_id'=>'ASC'])->paginate(30);
              break;
        }
        return $countries;
    }

    public function insert($request){
        $date_added	= date('y-m-d h:i:s');
        $country_id = DB::table('countries')->insertGetId([
            'status'                => $request->isActive,
            'address_format_id'	    =>   1,
            'created_at'            =>  $date_added,
        ]);

        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('country_description')->insert([
                'countries_id'      =>  $country_id,
                'countries_name'    =>     $request->countries_name[$language->languages_id],
                'language_id'       =>    $language->languages_id,
            ]);
        }

        return $country_id;
    }

    public function edit($id){
    //   $country = Countries::where('countries_id', $id)->first();
      $country = DB::table('countries')
        ->join('country_description', 'country_description.countries_id', '=', 'countries.countries_id')
        ->where('countries.countries_id', '=', $id)
        ->select('countries.countries_id as id', 'countries_name as name', 'status')
        ->get();
      return $country;
    }

    public function updaterecord($request){
        
        $last_modified 	=   date('y-m-d h:i:s');
        $languages_id = language();

        $countryUpdate = DB::table('countries')->where('countries_id', $request->id)->update([
            'status' => $request->status,
            'updated_at'    =>  $last_modified,
        ]);
        for ($i=1; $i <= 2; $i++) { 
            DB::table('country_description')
            ->where('countries_id', $request->id)
            ->where('language_id', '=', $i)
            ->update([
                'countries_name'    =>  $request->countries_name[$i]
            ]);
        }
        return $countryUpdate;
    }

    public function deleterecord($request){
      $deletecountry = DB::table('countries')->where('countries_id', $request->id)->delete();
      $deleteDescription = DB::table('country_description')->where('countries_id', $request->id)->delete();
    }

    public function getcountry($request){
      $country = DB::table('countries')->where('countries_id', $request->id)->get();
      return $country;
    }





}
