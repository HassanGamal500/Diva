<?php

namespace App\Models\Core;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class blogs extends Model
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

        $blogs = DB::table('blogs')
        ->join('blog_description', 'blog_description.blog_id', 'blogs.blog_id')
        ->select('blogs.blog_id', 'blog_image', 'blog_title')
        ->where('language_id', '=', language())
		->orderBy('blogs.blog_id','desc')
		->get();

		$result['message'] = $message;
        $result['blogs'] = $blogs;
        return $result;
    }

    public function insert($request){
        if ($request->hasFile('blog_image')) {
            $blog_image = Storage::disk('edit_path')->putFile('images/blogs', $request->file('blog_image'));
        } else {
            $blog_image = '';
        }
        
        $blog = DB::table('blogs')->insertGetId([
                'blog_date'             =>  $request->blog_date,
                'blog_image'			=>	$blog_image,
                'status'	 			=>  $request->status,
                ]);
        
        $languages = $this->varsetting->getLanguages();

        foreach($languages as $language){
            DB::table('blog_description')->insert([
                'blog_title'  		 =>   $request->blog_title[$language->languages_id],
                'blog_description_part'   =>     $request->blog_description_part[$language->languages_id],
                'blog_description_full'   =>     $request->blog_description_full[$language->languages_id],
                'blog_id' => $blog,
                'language_id'    =>    $language->languages_id,
            ]);
        }
    }

    public static function edit($request){

        $blogs = DB::table('blogs')
            ->leftJoin('blog_description', 'blog_description.blog_id', 'blogs.blog_id')
            ->leftjoin('languages', 'languages.languages_id', '=', 'blog_description.language_id')
            ->where('blogs.blog_id', $request->id)
            ->select('blogs.*', 'blog_title', 'blog_description_part', 'blog_description_full', 'language_id', 'name')
            ->get();
        // dd($banners);

        return $blogs;

    }

    public function updateblog($request){

        $getImage = DB::table('blogs')->where('blog_id', '=', $request->id)->first();
        if ($request->hasFile('blog_image')) {
            $myFile = public_path($getImage->blog_image);
            File::delete($myFile);
            $blog_image = Storage::disk('edit_path')->putFile('images/blogs', $request->file('blog_image'));
        } else {
            $blog_image = $request->oldImage;
        }

        $blog = DB::table('blogs')->where('blog_id', $request->id)->update([
            'blog_date'              =>  $request->blog_date,
            'blog_image'			 =>	  $blog_image,
            'status'	 			 =>   $request->status,
        ]);

        $languages = $this->varsetting->getLanguages();

        // dd($languages);

        foreach($languages as $language){
            DB::table('blog_description')
                ->where('blog_id', '=', $request->id)
                ->where('language_id', '=', $language->languages_id)
                ->update([
                    'blog_title'  		 =>   $request->blog_title[$language->languages_id],
                    'blog_description_part'   =>     $request->blog_description_part[$language->languages_id],
                    'blog_description_full'   =>     $request->blog_description_full[$language->languages_id]
                ]);
        }
		
    }

    public static function deleteblog($request){
        $getImage = DB::table('blogs')->where('blog_id', '=', $request->blog_id)->first();
        $myFile = public_path($getImage->blog_image);
        File::delete($myFile);
        DB::table('blogs')->where('blog_id', $request->blog_id)->delete();
        DB::table('blog_description')->where('blog_id', '=', $request->blog_id)->delete();
    }

}
