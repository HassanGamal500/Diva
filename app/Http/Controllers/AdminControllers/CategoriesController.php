<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Core\Languages;
use App\Models\Core\Categories;
use App\Models\Core\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Exception;
use App\Models\Core\Images;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class CategoriesController extends Controller
{
  public function __construct(Categories $categories, Setting $setting)
  {
      $this->Categories = $categories;
      $this->varseting = new SiteSettingController($setting);
  }

  public function display(){
    $title = array('pageTitle' => Lang::get("labels.MainCategories"));
    $categories = $this->Categories->paginator();
    return view("admin.categories.index",$title)->with('categories', $categories);
  }

  public function displaySub(){
    $title = array('pageTitle' => Lang::get("labels.SubCategories"));
    $categories = $this->Categories->paginatorSub();
    return view("admin.categories.sub.index",$title)->with('categories', $categories);
  }


  public function filter(Request $request){
    $title = array('pageTitle' => Lang::get("labels.Categories"));
    $categories = $this->Categories->filter($request);
    return view("admin.categories.index", $title)->with(['categories'=> $categories, 'name'=> $request->FilterBy, 'param'=> $request->parameter]);
  }

  public function add(Request $request){
    $title = array('pageTitle' => Lang::get("labels.AddMainCategories"));

    // $images = new Images;
    // $allimage = $images->getimages();

    $result = array();
    $result['message'] = array();
    //get function from other controller
    $result['languages'] = $this->varseting->getLanguages();
    $categories = $this->Categories->recursivecategories();

    $parent_id = 0;
    $option = '';

      foreach($categories as $parents){
        $option .= '<option value="'.$parents->categories_id.'">'.$parents->categories_name.'</option>';

          if(isset($parents->childs)){
            $i = 1;
            $option .= $this->childcat($parents->childs, $i, $parent_id);
          }

      }

    $result['categories'] = $option;
    return view("admin.categories.add",$title)->with('result', $result);
  }

  public function addSub(Request $request){
    $title = array('pageTitle' => Lang::get("labels.AddMainCategories"));

    // $images = new Images;
    // $allimage = $images->getimages();

    $result = array();
    $result['message'] = array();
    //get function from other controller
    $result['languages'] = $this->varseting->getLanguages();
    $categories = $this->Categories->recursivecategories();

    $parent_id = 0;
    $option = '</option>';

      foreach($categories as $parents){
        $option .= '<option value="'.$parents->categories_id.'">'.$parents->categories_name.'</option>';

          if(isset($parents->childs)){
            $i = 1;
            $option .= $this->childcat($parents->childs, $i, $parent_id);
          }

      }

    $result['categories'] = $option;
    return view("admin.categories.sub.add",$title)->with('result', $result);
  }

  public function childcat($childs, $i, $parent_id){
    $contents = '';
    foreach($childs as $key => $child){
      $dash = '';
      for($j=1; $j<=$i; $j++){
          $dash .=  '-';
      }
      //print(" <i>   ".$i." chgild");  echo '<pre>'.print_r($childs, true).'</pre>';
      if($child->categories_id==$parent_id){
        $selected = 'selected';
      }else{
        $selected = '';
      }

      $contents.='<option value="'.$child->categories_id.'" '.$selected.'>'.$dash.$child->categories_name.'</option>';
      if(isset($child->childs)){

        $k = $i+1;
        $contents.= $this->childcat($child->childs,$k,$parent_id);
      }
      elseif($i>0){
        $i=1;
      }

    }
    return $contents;
  }

  public function insert(Request $request){

      $validator = validator()->make($request->all(), [
        // 'categoryName' => 'required',
        'category_image' => 'required|image|mimes:jpeg,png,jpg,bmp,gif,svg',
        'categories_status' => 'required',
      ]);

      if ($validator->fails()) {
          $error = $validator->errors()->first();
          return redirect()->back()->withInput($request->all())->withErrors($error);
      }

        $date_added	= date('y-m-d h:i:s');
        $result = array();

        //get function from other controller
        $languages = $this->varseting->getLanguages();

        $categoryName = $request->categoryName;

        if ($request->hasFile('category_image')) {
          $category_image = Storage::disk('edit_path')->putFile('images/categories/main', $request->file('category_image'));
        } else {
          $category_image = '';
        }

        // $uploadImage = $request->category_image;
        $categories_status  = $request->categories_status;

        $categories_id = $this->Categories->insert($category_image,$date_added,$categories_status);
        $slug_flag = false;

        //multiple lanugauge with record
        foreach($languages as $languages_data){
            $categoryName= 'categoryName_'.$languages_data->languages_id;
            //slug
            if($slug_flag==false){
                $slug_flag=true;
                $slug = $request->$categoryName;
                $old_slug = $request->$categoryName;
                $slug_count = 0;
                do{
                    if($slug_count==0){
                        $currentSlug = $this->varseting->slugify($old_slug);
                    }else{
                        $currentSlug = $this->varseting->slugify($old_slug.'-'.$slug_count);
                    }
                    $slug = $currentSlug;
                    $checkSlug = $this->Categories->checkSlug($currentSlug);
                    $slug_count++;
                }
                  while(count($checkSlug)>0);
                  $updateSlug = $this->Categories->updateSlug($categories_id,$slug);
                }
            $categoryNameSub = $request->$categoryName;
            $languages_data_id = $languages_data->languages_id;
            $subcatoger_des = $this->Categories->insertcategorydescription($categoryNameSub,$categories_id,$languages_data_id);
        }

        $categories =  $this->Categories->subcategorydes();
        $result['categories'] = $categories;
        $message = Lang::get("labels.AddCategoryMessage");
        return redirect()->back()->withErrors([$message]);
  }

  public function insertSub(Request $request){

    $validator = validator()->make($request->all(), [
      'parent_id' => 'required',
    //   'categoryName' => 'required',
    //   'category_image' => 'required|image|mimes:jpeg,png,jpg,bmp,gif,svg',
      'categories_status' => 'required',
    ]);

    if ($validator->fails()) {
        $error = $validator->errors()->first();
        return redirect()->back()->withInput($request->all())->withErrors($error);
    }

    $date_added	= date('y-m-d h:i:s');
    $result = array();

    //get function from other controller
    $languages = $this->varseting->getLanguages();

    $categoryName = $request->categoryName;
    $parent_id = $request->parent_id;

    // if ($request->hasFile('category_image')) {
    //   $category_image = Storage::disk('edit_path')->putFile('categories/sub', $request->file('category_image'));
    // } else {
    //   $category_image = '';
    // }

    $categories_status  = $request->categories_status;

    $categories_id = $this->Categories->insertSub($date_added,$parent_id,$categories_status);
    $slug_flag = false;

    //multiple lanugauge with record
    foreach($languages as $languages_data){
        $categoryName= 'categoryName_'.$languages_data->languages_id;
        //slug
        if($slug_flag==false){
            $slug_flag=true;
            $slug = $request->$categoryName;
            $old_slug = $request->$categoryName;
            $slug_count = 0;
            do{
                if($slug_count==0){
                    $currentSlug = $this->varseting->slugify($old_slug);
                }else{
                    $currentSlug = $this->varseting->slugify($old_slug.'-'.$slug_count);
                }
                $slug = $currentSlug;
                $checkSlug = $this->Categories->checkSlug($currentSlug);
                $slug_count++;
            }
              while(count($checkSlug)>0);
              $updateSlug = $this->Categories->updateSlug($categories_id,$slug);
            }
        $categoryNameSub = $request->$categoryName;
        $languages_data_id = $languages_data->languages_id;
        $subcatoger_des = $this->Categories->insertcategorydescription($categoryNameSub,$categories_id,$languages_data_id);
    }

    $categories =  $this->Categories->subcategorydes();
    $result['categories'] = $categories;
    $message = Lang::get("labels.AddCategoryMessage");
    return redirect()->back()->withErrors([$message]);
}

  public function edit(Request $request){
    $title = array('pageTitle' => Lang::get("labels.EditCategories"));
    // $images = new Images;
    // $allimage = $images->getimages();

    $result = array();
    $result['message'] = array();

    //get function from other controller
    $result['languages'] = $this->varseting->getLanguages();
    $editSubCategory = $this->Categories->editsubcategory($request);

    $description_data = array();
    foreach($result['languages'] as $languages_data){
        $languages_id = $languages_data->languages_id;
        $id = $request->id;
        $description = $this->Categories->editdescription($languages_id,$id);
        if(count($description)>0){
            $description_data[$languages_data->languages_id]['name'] = $description[0]->categories_name;
            $description_data[$languages_data->languages_id]['language_name'] = $languages_data->name;
            $description_data[$languages_data->languages_id]['languages_id'] = $languages_data->languages_id;
        }else{
            $description_data[$languages_data->languages_id]['name'] = '';
            $description_data[$languages_data->languages_id]['language_name'] = $languages_data->name;
            $description_data[$languages_data->languages_id]['languages_id'] = $languages_data->languages_id;
        }
    }

    $result['description'] = $description_data;
    $result['editSubCategory'] = $editSubCategory;

    $categories = $this->Categories->editrecursivecategories($request);
    //  dd($editSubCategory[0]->parent_id);
    $parent_id = $editSubCategory[0]->parent_id;
    $option = '<option value="0">'. Lang::get("labels.Leave As Parent").'</option>';
    foreach($categories as $parents){
      if($parents->categories_id==$parent_id){
        $selected = 'selected';
      }else{
        $selected = '';
      }

      $option .= '<option value="'.$parents->categories_id.'"  '.$selected.' >'.$parents->categories_name.'</option>';
        $i = 1;
        if(isset($parents->childs)){
          $option .= $this->childcat($parents->childs, $i, $parent_id);
        }
    }

    $result['categories'] = $option;
    // dd($result['description']);
    
    return view("admin.categories.edit",$title)->with('result', $result);
  }

  public function editSub(Request $request){
    $title = array('pageTitle' => Lang::get("labels.EditCategories"));
    // $images = new Images;
    // $allimage = $images->getimages();

    $result = array();
    $result['message'] = array();

    //get function from other controller
    $result['languages'] = $this->varseting->getLanguages();
    $editSubCategory = $this->Categories->editsubcategory($request);

    $description_data = array();
    foreach($result['languages'] as $languages_data){
        $languages_id = $languages_data->languages_id;
        $id = $request->id;
        $description = $this->Categories->editdescription($languages_id,$id);
        if(count($description)>0){
            $description_data[$languages_data->languages_id]['name'] = $description[0]->categories_name;
            $description_data[$languages_data->languages_id]['language_name'] = $languages_data->name;
            $description_data[$languages_data->languages_id]['languages_id'] = $languages_data->languages_id;
        }else{
            $description_data[$languages_data->languages_id]['name'] = '';
            $description_data[$languages_data->languages_id]['language_name'] = $languages_data->name;
            $description_data[$languages_data->languages_id]['languages_id'] = $languages_data->languages_id;
        }
    }

    $result['description'] = $description_data;
    $result['editSubCategory'] = $editSubCategory;

    $categories = $this->Categories->editrecursivecategoriesSub($request);
    //  dd($editSubCategory[0]->parent_id);
    $parent_id = $editSubCategory[0]->parent_id;
    $option = '<option disabled>'. Lang::get("labels.Leave As Parent").'</option>';
    foreach($categories as $parents){
      if($parents->categories_id==$parent_id){
        $selected = 'selected';
      }else{
        $selected = '';
      }

      $option .= '<option value="'.$parents->categories_id.'"  '.$selected.' >'.$parents->categories_name.'</option>';
        $i = 1;
        if(isset($parents->childs)){
          $option .= $this->childcat($parents->childs, $i, $parent_id);
        }
    }

    $result['categories'] = $option;
    return view("admin.categories.sub.edit",$title)->with('result', $result);
  }

  public function update(Request $request){

    $validator = validator()->make($request->all(), [
    //   'categoryName' => 'required',
      'category_image' => 'nullable',
      'categories_status' => 'required',
    ]);

    if ($validator->fails()) {
        $error = $validator->errors()->first();
        return redirect()->back()->withInput($request->all())->withErrors($error);
    }

     $title = array('pageTitle' => Lang::get("labels.EditSubCategories"));
     $result = array();
     $result['message'] = Lang::get("labels.Category has been updated successfully");
     $last_modified 	=   date('y-m-d h:i:s');
     $categories_id = $request->id;
     $categories_status  = $request->categories_status;

     //get function from other controller
     $languages = $this->varseting->getLanguages();
     $extensions = $this->varseting->imageType();

     //check slug
     if($request->old_slug!=$request->slug){
         $slug = $request->slug;
         $slug_count = 0;
         do{
             if($slug_count==0){
                 $currentSlug = $this->varseting->slugify($request->slug);
             }else{
                 $currentSlug = $this->varseting->slugify($request->slug.'-'.$slug_count);
             }
             $slug = $currentSlug;
             $checkSlug = DB::table('categories')->where('categories_slug',$currentSlug)->where('categories_id','!=',$request->id)->get();
             $slug_count++;
         }
         while(count($checkSlug)>0);
     }else{
         $slug = $request->slug;
     }
    //  if($request->image_id!==null){
    //      $uploadImage = $request->image_id;
    //  }else{
    //      $uploadImage = $request->oldImage;
    //  }
    $getImage = DB::table('categories')->where('categories_id', '=', $request->id)->first();
    if ($request->hasFile('category_image')) {
      $myFile = public_path($getImage->categories_image);
      File::delete($myFile);
      $category_image = Storage::disk('edit_path')->putFile('images/categories/main', $request->file('category_image'));
    } else {
      $category_image = $request->oldImage;
    }

     $updateCategory = $this->Categories->updaterecord($categories_id,$category_image,$last_modified,$categories_status);

     foreach($languages as $languages_data){
       $categories_name = 'category_name_'.$languages_data->languages_id;
       $checkExist = $this->Categories->checkExit($categories_id,$languages_data);
         $categories_name = $request->$categories_name;
         if(count($checkExist)>0){
           $category_des_update = $this->Categories->updatedescription($categories_name,$languages_data->languages_id,$categories_id);
       }else{
           $updat_des = $this->Categories->insertcategorydescription($categories_name,$categories_id, $languages_data->languages_id);
       }
     }

     $message = Lang::get("labels.CategorieUpdateMessage");
     return redirect()->back()->withErrors([$message]);
  }

  public function updateSub(Request $request){

    $validator = validator()->make($request->all(), [
      'parent_id' => 'required',
    //   'categoryName' => 'required',
    //   'category_image' => 'nullable',
      'categories_status' => 'required',
    ]);

    if ($validator->fails()) {
        $error = $validator->errors()->first();
        return redirect()->back()->withInput($request->all())->withErrors($error);
    }

    $title = array('pageTitle' => Lang::get("labels.EditSubCategories"));
    $result = array();
    $result['message'] = Lang::get("labels.Category has been updated successfully");
    $last_modified 	=   date('y-m-d h:i:s');
    $parent_id = $request->parent_id;
    $categories_id = $request->id;
    $categories_status  = $request->categories_status;

    //get function from other controller
    $languages = $this->varseting->getLanguages();
    $extensions = $this->varseting->imageType();

    //check slug
    if($request->old_slug!=$request->slug){
        $slug = $request->slug;
        $slug_count = 0;
        do{
            if($slug_count==0){
                $currentSlug = $this->varseting->slugify($request->slug);
            }else{
                $currentSlug = $this->varseting->slugify($request->slug.'-'.$slug_count);
            }
            $slug = $currentSlug;
            $checkSlug = DB::table('categories')->where('categories_slug',$currentSlug)->where('categories_id','!=',$request->id)->get();
            $slug_count++;
        }
        while(count($checkSlug)>0);
    }else{
        $slug = $request->slug;
    }
    // $getImage = DB::table('categories')->where('categories_id', '=', $request->id)->first();
    // if ($request->hasFile('category_image')) {
    //   $myFile = public_path('images/'.$getUser->categories_image);
    //   File::delete($myFile);
    //   $category_image = Storage::disk('edit_path')->putFile('categories/sub', $request->file('category_image'));
    // } else {
    //   $category_image = $request->oldImage;
    // }

    $updateCategory = $this->Categories->updaterecordSub($categories_id,$last_modified,$parent_id,$categories_status);

    foreach($languages as $languages_data){
      $categories_name = 'category_name_'.$languages_data->languages_id;
      $checkExist = $this->Categories->checkExit($categories_id,$languages_data);
        $categories_name = $request->$categories_name;
        if(count($checkExist)>0){
          $category_des_update = $this->Categories->updatedescription($categories_name,$languages_data->languages_id,$categories_id);
      }else{
          $updat_des = $this->Categories->insertcategorydescription($categories_name,$categories_id, $languages_data->languages_id);
      }
    }

    $message = Lang::get("labels.CategorieUpdateMessage");
    return redirect()->back()->withErrors([$message]);
 }

  public function delete(Request $request){
    $getImage = DB::table('categories')->where('categories_id', '=', $request->id)->first();
    $myFile = public_path($getImage->categories_image);
    File::delete($myFile);
    $deletecategory = $this->Categories->deleterecord($request);
    $message = Lang::get("labels.CategoriesDeleteMessage");
    return redirect()->back()->withErrors([$message]);
  }
}
