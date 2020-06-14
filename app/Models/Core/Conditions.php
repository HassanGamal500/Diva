<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Kyslik\ColumnSortable\Sortable;
use App\condition_description;
use App\Models\Core\Brands;
use App\Http\Controllers\AdminControllers\SiteSettingController;
use Illuminate\Support\Facades\Validator;

class Conditions extends Model
{
  public function __construct()
  {
      $varsetting = new SiteSettingController();
      $this->varsetting = $varsetting;
  }
    //
    use Sortable;
    public function condition_description(){
        return $this->hasOne('App\condition_description');
    }

    // public $sortableAs = ['created_at'];
    // public $sortable = ['brand_id', 'brand_name','created_at','updated_at'];

    public function paginator(){
         $conditions =  Conditions::sortable(['condition_id'=>'desc'])
                        ->leftJoin('condition_description','condition_description.condition_id', '=', 'conditions.condition_id')
                        ->select('conditions.condition_id as id', 'condition_name as name')
                        ->where('language_id', '=', language())
                        ->get();
        return $conditions;
    }

    public function insert($request){

        $slug = $request->condition_name[1];
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

        $condition = DB::table('conditions')->insertGetId([
            'status' => $request->isActive,
            'created_at'  =>  $date_added,
        ]);

        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('condition_description')->insert([
                'condition_id'    =>  $condition,
                'condition_name'   =>     $request->condition_name[$language->languages_id],
                'language_id'    =>    $language->languages_id,
            ]);
        }

    }

    public function edit($condition_id){

        $editCondition = DB::table('conditions')
        ->join('condition_description','condition_description.condition_id', '=', 'conditions.condition_id')
        ->where('conditions.condition_id', '=', $condition_id)
        ->select('conditions.condition_id as id', 'condition_name as name', 'status')
        ->get();

        return $editCondition;
    }

    public function filter($name,$param){
      switch ( $name )
      {
          case 'Name':
              $conditions = Conditions::sortable(['condition_id'=>'desc'])
              ->leftJoin('condition_description','condition_description.condition_id', '=', 'conditions.condition_id')
                  ->where('condition_name', 'LIKE', '%' . $param . '%')
                  ->select('conditions.condition_id as id', 'condition_name as name')
                  ->paginate(10);
              break;

          default:
                $conditions =  Conditions::sortable(['condition_id'=>'desc'])
                ->leftJoin('condition_description','condition_description.condition_id', '=', 'conditions.condition_id')
                    ->select('conditions.condition_id as id', 'condition_name as name')
                    ->where('language_id', '=', language())
                    ->paginate(10);
      }
        return $brands;
    }

    public function slug($currentSlug){

        $checkSlug = DB::table('condition_description')->where('condition_name',$currentSlug)->get();

        return $checkSlug;
    }

    public function updaterecord($request){

        $last_modified 	=   date('y-m-d h:i:s');
        $languages_id = '1';

        DB::table('conditions')->where('condition_id', $request->id)->update([
            'status' => $request->status,
            'updated_at'    =>  $last_modified,
        ]);
        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('condition_description')
            ->where('condition_id', $request->id)
            ->where('language_id', '=', $language->languages_id)
            ->update([
                'condition_name'    =>  $request->condition_name[$language->languages_id]
            ]);
        }

    }

    //delete Brands
    public function destroyrecord($request){

        DB::table('conditions')->where('condition_id', $request->condition_id)->delete();
        DB::table('condition_description')->where('condition_id', $request->condition_id)->delete();

    }

    public function getter(){
        
    }

}
