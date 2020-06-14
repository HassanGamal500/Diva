<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Kyslik\ColumnSortable\Sortable;
use App\brand_description;
use App\Models\Core\Brands;
use App\Http\Controllers\AdminControllers\SiteSettingController;
use Illuminate\Support\Facades\Validator;

class Brands extends Model
{
  public function __construct()
  {
      $varsetting = new SiteSettingController();
      $this->varsetting = $varsetting;
  }
    //
    use Sortable;
    public function brand_description(){
        return $this->hasOne('App\brand_description');
    }

    public $sortableAs = ['created_at'];
    public $sortable = ['brand_id', 'brand_name','created_at','updated_at'];

    public function paginator(){
         $brands =  Brands::sortable(['brand_id'=>'desc'])
                        ->leftJoin('brand_description','brand_description.brand_id', '=', 'brands.brand_id')
                        ->select('brands.brand_id as id', 'brand_name as name')
                        ->where('language_id', '=', language())
                        ->get();
        return $brands;
    }

    public function insert($request){

        $slug = $request->brand_name[1];
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

        $brand = DB::table('brands')->insertGetId([
            'status' => $request->isActive,
            'created_at'  =>  $date_added,
        ]);

        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('brand_description')->insert([
                'brand_id'    =>  $brand,
                'brand_name'   =>     $request->brand_name[$language->languages_id],
                'language_id'    =>    $language->languages_id,
            ]);
        }

    }

    public function edit($brand_id){

        $editBrand = DB::table('brands')
        ->join('brand_description', 'brand_description.brand_id', '=', 'brands.brand_id')
        ->where('brands.brand_id', '=', $brand_id)
        ->select('brands.brand_id as id', 'brand_name as name', 'status')
        ->get();

        return $editBrand;
    }

    public function filter($name,$param){
      switch ( $name )
      {
          case 'Name':
              $brands = Brands::sortable(['brand_id'=>'desc'])
                  ->leftJoin('brand_description','brand_description.brand_id', '=', 'brands.brand_id')
                  ->where('brand_name', 'LIKE', '%' . $param . '%')
                  ->select('brands.brand_id as id', 'brand_name as name')
                  ->get();
              break;

          default:
                $brands =  Brands::sortable(['brand_id'=>'desc'])
                    ->leftJoin('brand_description','brand_description.brand_id', '=', 'brands.brand_id')
                    ->select('brands.brand_id as id', 'brand_name as name')
                    ->where('language_id', '=', language())
                    ->get();
      }
        return $brands;
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

        $checkSlug = DB::table('brand_description')->where('brand_name',$currentSlug)->get();

        return $checkSlug;
    }



    public function updaterecord($request){

        $last_modified 	=   date('y-m-d h:i:s');
        $languages_id = language();

        DB::table('brands')->where('brand_id', $request->id)->update([
            'status' => $request->status,
            'updated_at'    =>  $last_modified,
        ]);
        for ($i=1; $i <= 2; $i++) { 
            DB::table('brand_description')
            ->where('brand_id', $request->id)
            ->where('language_id', '=', $i)
            ->update([
                'brand_name'    =>  $request->brand_name[$i]
            ]);
        }

    }


    //delete Brands

    public function destroyrecord($request){

        DB::table('brands')->where('brand_id', $request->brand_id)->delete();
        DB::table('brand_description')->where('brand_id', $request->brand_id)->delete();

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
