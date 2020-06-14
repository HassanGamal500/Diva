<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class faqs extends Model
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

        $faqs = DB::table('faqs')
        ->join('faq_description', 'faq_description.faq_id', 'faqs.faq_id')
        ->select('faqs.faq_id', 'faq_question')
        ->where('language_id', '=', language())
		->orderBy('faqs.faq_id','desc')
		->get();

		$result['message'] = $message;
        $result['faqs'] = $faqs;
        return $result;
    }

    public function insert($request){        
        $faq = DB::table('faqs')->insertGetId([
                    'status'	  =>   $request->status,
                ]);
        
        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('faq_description')->insert([
                'faq_question'  =>  $request->faq_question[$language->languages_id],
                'faq_answer'    =>  $request->faq_answer[$language->languages_id],
                'faq_id'        =>  $faq,
                'language_id'   =>  $language->languages_id,
            ]);
        }
    }

    public static function edit($request){

        $faqs = DB::table('faqs')
            ->leftjoin('faq_description', 'faq_description.faq_id', 'faqs.faq_id')
            ->where('faqs.faq_id', $request->id)
            ->select('faqs.*', 'faq_question', 'faq_answer')
            ->get();

        return $faqs;

    }

    public function updatefaq($request){

        $blog = DB::table('faqs')->where('faq_id', $request->id)->update([
            'status'	 	=>   $request->status,
        ]);

        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('faq_description')
                ->where('faq_id', '=', $request->id)
                ->where('language_id', '=', $language->languages_id)
                ->update([
                    'faq_question'  =>   $request->faq_question[$language->languages_id],
                    'faq_answer'    =>   $request->faq_answer[$language->languages_id],
                ]);
        }
		
    }

    public static function deletefaq($request){
        DB::table('faqs')->where('faq_id', $request->faq_id)->delete();
        DB::table('faq_description')->where('faq_id', '=', $request->faq_id)->delete();
    }

}
