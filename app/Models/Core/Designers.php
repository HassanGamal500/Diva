<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Kyslik\ColumnSortable\Sortable;
use App\designer_description;
use App\Models\Core\Designers;
use App\Http\Controllers\AdminControllers\SiteSettingController;
use Illuminate\Support\Facades\Validator;

class Designers extends Model
{
  public function __construct()
  {
      $varsetting = new SiteSettingController();
      $this->varsetting = $varsetting;
  }
    //
    use Sortable;
    public function designer_description(){
        return $this->hasOne('App\designer_description');
    }

    public $sortableAs = ['created_at'];
    public $sortable = ['designer_id', 'designer_name','created_at','updated_at'];

    public function paginator(){
         $designers =  Designers::sortable(['designer_id'=>'desc'])
                        ->leftJoin('designer_description','designer_description.designer_id', '=', 'designers.designer_id')
                        ->select('designers.designer_id as id', 'designer_name as name')
                        ->where('language_id', '=', language())
                        ->get();
        return $designers;
    }

    public function insert($request){

        $slug = $request->designer_name[1];
        $date_added	= date('y-m-d h:i:s');
        $languages_id 	=  language();
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

        $designer = DB::table('designers')->insertGetId([
            'status' => $request->isActive,
            'created_at'  =>  $date_added,
        ]);

        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('designer_description')->insert([
                'designer_id'    =>  $designer,
                'designer_name'   =>     $request->designer_name[$language->languages_id],
                'language_id'    =>    $language->languages_id,
            ]);
        }

    }

    public function edit($designer_id){

        $editDesigner = DB::table('designers')
        ->join('designer_description', 'designer_description.designer_id', '=', 'designers.designer_id')
        ->where('designers.designer_id', '=', $designer_id)
        ->select('designers.designer_id as id', 'designer_name as name', 'status')
        ->get();

        return $editDesigner;
    }

    public function filter($name,$param){
      switch ( $name )
      {
          case 'Name':
              $designers = Designers::sortable(['designer_id'=>'desc'])
                  ->leftJoin('designer_description','designer_description.designer_id', '=', 'designers.designer_id')
                  ->where('designer_name', 'LIKE', '%' . $param . '%')
                  ->select('designers.designer_id as id', 'designer_name as name')
                  ->get();
              break;

          default:
                $designers =  Designers::sortable(['designer_id'=>'desc'])
                    ->leftJoin('designer_description','designer_description.designer_id', '=', 'designers.designer_id')
                    ->select('designers.designer_id as id', 'designer_name as name')
                    ->where('language_id', '=', language())
                    ->get();
      }
        return $designers;
    }

    public function fetchAllmanufacturers($language_id){

        $getManufacturers = DB::table('manufacturers')
            ->leftJoin('manufacturers_info','manufacturers_info.manufacturers_id', '=', 'manufacturers.manufacturers_id')
            ->select('manufacturers.manufacturers_id as id', 'manufacturers.manufacturer_image as image',  'manufacturers.manufacturer_name as name', 'manufacturers_info.manufacturers_url as url', 'manufacturers_info.url_clicked', 'manufacturers_info.date_last_click as clik_date')
            ->where('manufacturers_info.languages_id', language())->get();
        return $getManufacturers;
    }

    public function fetchmanufacturers(){

        $manufacturers = DB::table('manufacturers')
            ->leftJoin('manufacturers_info','manufacturers_info.manufacturers_id', '=', 'manufacturers.manufacturers_id')
            ->leftJoin('images','images.id', '=', 'manufacturers.manufacturer_image')
            ->leftJoin('image_categories','image_categories.image_id', '=', 'manufacturers.manufacturer_image')
            ->select('manufacturers.manufacturers_id as id', 'manufacturers.manufacturer_image as image',  'manufacturers.manufacturer_name as name', 'manufacturers_info.manufacturers_url as url', 'manufacturers_info.url_clicked', 'manufacturers_info.date_last_click as clik_date','image_categories.path as path')
            ->where('manufacturers_info.languages_id', language())->where('image_categories.image_type','=','THUMBNAIL' or 'image_categories.image_type','=','ACTUAL');


        return $manufacturers;


    }



    public function slug($currentSlug){

        $checkSlug = DB::table('designer_description')->where('designer_name',$currentSlug)->get();

        return $checkSlug;
    }



    public function updaterecord($request){

        $last_modified 	=   date('y-m-d h:i:s');
        $languages_id = language();

        DB::table('designers')->where('designer_id', $request->id)->update([
            'status' => $request->status,
            'updated_at'    =>  $last_modified,
        ]);
        for ($i=1; $i <= 2; $i++) { 
            DB::table('designer_description')
            ->where('designer_id', $request->id)
            ->where('language_id', '=', $i)
            ->update([
                'designer_name'    =>  $request->designer_name[$i]
            ]);
        }

    }


    //delete Designers

    public function destroyrecord($request){

        DB::table('designers')->where('designer_id', $request->designer_id)->delete();
        DB::table('designer_description')->where('designer_id', $request->designer_id)->delete();

    }
    
    public function fetchsortmanufacturers($name, $param){

        switch ( $name )
        {
            case 'Name':
                $manufacturers = DB::table('manufacturers')
                ->leftJoin('manufacturers_info','manufacturers_info.manufacturers_id', '=', 'manufacturers.manufacturers_id')
                ->leftJoin('images','images.id', '=', 'manufacturers.manufacturer_image')
                ->leftJoin('image_categories','image_categories.image_id', '=', 'manufacturers.manufacturer_image')
                ->select('manufacturers.manufacturers_id as id', 'manufacturers.manufacturer_image as image',  'manufacturers.manufacturer_name as name', 'manufacturers_info.manufacturers_url as url', 'manufacturers_info.url_clicked', 'manufacturers_info.date_last_click as clik_date','image_categories.path as path')
                ->where('manufacturers.manufacturer_name', 'LIKE', '%' . $param . '%')->where('image_categories.image_type','=','THUMBNAIL' or 'image_categories.image_type','=','ACTUAL')->paginate('10');
                  break;

            case 'URL':
                $manufacturers = DB::table('manufacturers')
                    ->leftJoin('manufacturers_info','manufacturers_info.manufacturers_id', '=', 'manufacturers.manufacturers_id')
                    ->leftJoin('images','images.id', '=', 'manufacturers.manufacturer_image')
                    ->leftJoin('image_categories','image_categories.image_id', '=', 'manufacturers.manufacturer_image')
                    ->select('manufacturers.manufacturers_id as id', 'manufacturers.manufacturer_image as image',  'manufacturers.manufacturer_name as name', 'manufacturers_info.manufacturers_url as url', 'manufacturers_info.url_clicked', 'manufacturers_info.date_last_click as clik_date','image_categories.path as path')
                    ->where('manufacturers_info.manufacturers_url', 'LIKE', '%' . $param . '%')->where('image_categories.image_type','=','THUMBNAIL' or 'image_categories.image_type','=','ACTUAL')->paginate('10');
                break;


            default:
            $manufacturers = DB::table('manufacturers')
                ->leftJoin('manufacturers_info','manufacturers_info.manufacturers_id', '=', 'manufacturers.manufacturers_id')
                ->leftJoin('images','images.id', '=', 'manufacturers.manufacturer_image')
                ->leftJoin('image_categories','image_categories.image_id', '=', 'manufacturers.manufacturer_image')
                ->select('manufacturers.manufacturers_id as id', 'manufacturers.manufacturer_image as image',  'manufacturers.manufacturer_name as name', 'manufacturers_info.manufacturers_url as url', 'manufacturers_info.url_clicked', 'manufacturers_info.date_last_click as clik_date','image_categories.path as path')
                ->where('manufacturers_info.languages_id', '1')->paginate('10');
        }


        return $manufacturers;


    }

}
