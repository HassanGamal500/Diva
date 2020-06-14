<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Core\Images;
use App\Models\Core\Setting;
use App\Models\Core\Languages;
use App\Models\Core\Manufacturers;
use App\Models\Core\Categories;
use App\Models\Core\Products;
use App\Models\Core\Reviews;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\AdminControllers\AlertController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Carbon\Carbon;
use App\Models\Core\Conditions;
use Illuminate\Support\Facades\Redirect;


class ProductController extends Controller
{

  public function __construct(Products $products, Languages $language,Images $images,Categories $category, Setting $setting,
    Manufacturers $manufacturer,Reviews $reviews,Conditions $conditions)
  {
      $this->category = $category;
      $this->reviews = $reviews;
      $this->language = $language;
      $this->images = $images;
      $this->manufacturer = $manufacturer;
      $this->products = $products;
      $this->myVarsetting = new SiteSettingController($setting);
      $this->myVaralter = new AlertController($setting);
      $this->conditions = $conditions;

  }

  public function reviews(Request $request){

      $title = array('pageTitle' => Lang::get("labels.reviews"));
      $results = array();
      $data = $this->reviews->paginator();
      $results['reviews'] = $data;
      return view("admin.reviews.index",$title)->with('result', $results);

  }

  public function editreviews($id,$status){
    if($status == 1){
      DB::table('reviews')
        ->where('reviews_id',$id)
        ->update([
          'reviews_status' => 1
        ]);
      DB::table('reviews')
        ->where('reviews_id',$id)
        ->update([
          'reviews_read' => 1
        ]);
    }elseif($status == 0){
      DB::table('reviews')
        ->where('reviews_id',$id)
        ->update([
          'reviews_read' => 1
        ]);
    }else{
      DB::table('reviews')
        ->where('reviews_id',$id)
        ->update([
          'reviews_read' => 1,
          'reviews_status' => -1
        ]);
    }
    $message = Lang::get("labels.reviewupdateMessage");
    return redirect()->back()->withErrors([$message]);;

  }

  public function display(Request $request){
      $language_id = language();
      $categories_id = $request->categories_id;
      $product  = $request->product;
      $title = array('pageTitle' => Lang::get("labels.Products"));
      $subCategories = $this->category->getter($language_id);
      $products = $this->products->paginator($request);
      $results['products'] = $products;
      $results['currency'] = $this->myVarsetting->getSetting();
      $results['units'] = $this->myVarsetting->getUnits();
      $results['subCategories'] = $subCategories;
      $currentTime =  array('currentTime'=>time());
      return view("admin.products.index",$title)->with('results', $results)->with('categories_id',$categories_id)->with('product',$product);

  }

  public function displayCustomer(Request $request){
      $language_id = language();
      $categories_id = $request->categories_id;
      $product  = $request->product;
      $title = array('pageTitle' => Lang::get("labels.Products"));
      $subCategories = $this->category->getter($language_id);
      $products = $this->products->paginatorCustomer($request);
      $results['products'] = $products;
      $results['currency'] = $this->myVarsetting->getSetting();
      $results['units'] = $this->myVarsetting->getUnits();
      $results['subCategories'] = $subCategories;
      $currentTime =  array('currentTime'=>time());
      return view("admin.products.indexForCustomer",$title)->with('results', $results)->with('categories_id',$categories_id)->with('product',$product);
  }

  public function add(Request $request){
    $title = array('pageTitle' => Lang::get("labels.AddProduct"));
    $language_id      =   language();
    $allimage = $this->images->getimages();
    $result = array();
    $categories =  $this->category->recursivecategories($request);

    $parent_id = array();
    $option = '<ul class="list-group list-group-root well">';

      foreach($categories as $parents){

        if(in_array( $parents->categories_id, $parent_id)){
          $checked = 'checked';
        }else{
          $checked = '';
        }

        $option .= '<li href="#" class="list-group-item">
          <label style="width:100%">
            <input id="categories_'.$parents->categories_id.'" '.$checked.' type="checkbox" class=" required_one categories sub_categories" name="categories[]" value="'.$parents->categories_id.'">
          '.$parents->categories_name.'
          </label></li>';

        if(isset($parents->childs)){
          $option .= '<ul class="list-group">
          <li class="list-group-item">';
          $option .= $this->childcat($parents->childs, $parent_id);
          $option .= '</li></ul>';
        }
      }
      $option .= '</ul>';

    //  $result['categories'] = $option;
    $result['categories'] = DB::table('categories')
          ->join('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
          ->select('categories.categories_id as id', 'categories_name as name')
          ->where('parent_id', '=', 0)
          ->where('language_id', '=', $language_id)
          ->get();
    $result['manufacturer'] = $this->manufacturer->getter($language_id);
    $result['conditions'] = DB::table('conditions')
          ->join('condition_description', 'condition_description.condition_id', '=', 'conditions.condition_id')
          ->select('conditions.condition_id as id', 'condition_name as name')
          ->where('language_id', '=', $language_id)
          ->where('status', '=', 1)
          ->get();
    $result['brands'] = DB::table('brands')
          ->join('brand_description', 'brand_description.brand_id', '=', 'brands.brand_id')
          ->select('brands.brand_id as id', 'brand_name as name')
          ->where('language_id', '=', $language_id)
          ->where('status', '=', 1)
          ->get();
    $result['designers'] = DB::table('designers')
          ->join('designer_description', 'designer_description.designer_id', '=', 'designers.designer_id')
          ->select('designers.designer_id as id', 'designer_name as name')
          ->where('language_id', '=', $language_id)
          ->where('status', '=', 1)
          ->get();
    $taxClass = DB::table('tax_class')->get();
    $result['taxClass'] = $taxClass;
    $result['languages'] = $this->myVarsetting->getLanguages();
    $result['units'] = $this->myVarsetting->getUnits();
    return view("admin.products.add", $title)->with('result', $result)->with('allimage',$allimage);

  }

  public function subCategoryProduct(Request $request){
    $language_id      =   language();
    $data = DB::table('categories')
        ->join('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
        ->select('categories.categories_id as id', 'categories_name as name')
        ->where('parent_id', '>=', 1)
        ->where('categories.parent_id', '=', $request->id)
        ->where('language_id', '=', $language_id)
        ->where('categories_status', '=', 1)
        ->get();

    return response()->json($data);
  }

	public function childcat($childs, $parent_id){

		$contents = '';
		foreach($childs as $key => $child){

      if(in_array( $child->categories_id, $parent_id)){
        $checked = 'checked';
      }else{
        $checked = '';
      }

      $contents.='<label> <input id="categories_'.$child->categories_id.'" parents_id="'.$child->parent_id.'"  type="checkbox" name="categories[]" class="required_one sub_categories categories sub_categories_'.$child->parent_id.'" value="'.$child->categories_id.'" '.$checked.'> '.$child->categories_name.'</label>';

      if(isset($child->childs)){
        $contents .= '<ul class="list-group">
        <li class="list-group-item">';
        $contents.= $this->childcat($child->childs,$parent_id);
        $contents.= "</li></ul>";
		  }

		}
		return $contents;
  }

  public function edit(Request $request){
    $allimage = $this->images->getimages();
    $result =  $this->products->edit($request);
    //dd($result['categories_array']);
    // $categories =  $this->category->recursivecategories($request);

    // $parent_id = $result['categories_array'];
    // $option = '<ul class="list-group list-group-root well">';

    // foreach($categories as $parents){

    //   if(in_array( $parents->categories_id, $parent_id)){
    //     $checked = 'checked';
    //   }else{
    //     $checked = '';
    //   }

    //   $option .= '<li href="#" class="list-group-item">
    //     <label style="width:100%">
    //       <input id="categories_'.$parents->categories_id.'" '.$checked.' type="checkbox" class=" required_one categories sub_categories" name="categories[]" value="'.$parents->categories_id.'">
    //     '.$parents->categories_name.'
    //     </label></li>';

    //   if(isset($parents->childs)){
    //     $option .= '<ul class="list-group">
    //     <li class="list-group-item">';
    //     $option .= $this->childcat($parents->childs, $parent_id);
    //     $option .= '</li></ul>';
    //   }
    // }

    // $option .= '</ul>';
    // $result['categories'] = $option;
    $title = array('pageTitle' => Lang::get("labels.EditProduct"));
    return view("admin.products.edit", $title)->with('result', $result)->with('allimage',$allimage);

  }

  public function update(Request $request){
    $validator = validator()->make($request->all(), [
      // 'products_name' => 'required',
      'products_price' => 'required',
      'brand_id' => 'required',
      'designer_id' => 'required',
      'purchase_type' => 'required',
      'for_whom' => 'required',
      'condition_id' => 'required',
      'product_image' => 'nullable',
      'products_status' => 'required',
    ]);

    if ($validator->fails()) {
        $error = $validator->errors()->first();
        return Redirect::back()->withInput($request->all())->withErrors($error);
    }
    $result =  $this->products->updaterecord($request);
    $products_id      =   $request->id;
    if($request->products_type==1){
      return redirect('admin/products/attach/attribute/display/'.$products_id);
    }else{
      return redirect('admin/products/images/display/'.$products_id);
    }
  }

  public function delete(Request $request){
    $this->products->deleterecord($request);
    return redirect()->back()->withErrors([Lang::get("labels.ProducthasbeendeletedMessage")]);

  }

  public function insert(Request $request){
    $validator = validator()->make($request->all(), [
      // 'products_name' => 'required',
      'products_price' => 'required',
      'brand_id' => 'required',
      'designer_id' => 'required',
      'purchase_type' => 'required',
      'for_whom' => 'required',
      'condition_id' => 'required',
      'product_image' => 'required|image|mimes:jpeg,png,jpg,bmp,gif,svg',
      'products_status' => 'required',
    ]);

    if ($validator->fails()) {
        $error = $validator->errors()->first();
        return Redirect::back()->withInput($request->all())->withErrors($error);
    }

    $title = array('pageTitle' => Lang::get("labels.AddAttributes"));
    $language_id = language();
    $products_id = $this->products->insert($request);
    $result['data'] = array('products_id'=>$products_id, 'language_id'=>$language_id);
    $alertSetting = $this->myVaralter->newProductNotification($products_id);
    if($request->products_type==1){
        return redirect('/admin/products/attach/attribute/display/'.$products_id);
    }else{
        return redirect('admin/products/images/display/'.$products_id);
    }
  }

  public function addinventory(Request $request){
      $title = array('pageTitle' => Lang::get("labels.ProductInventory"));
      $id =  $request->id;
      $result = $this->products->addinventory($id);
      return view("admin.products.inventory.add", $title)->with('result', $result);

  }

  public function ajax_min_max($id){
      $title = array('pageTitle' => Lang::get("labels.ProductInventory"));
      $result = $this->products->ajax_min_max($id);
      return  $result;

  }

  public function ajax_attr($id){
      $title = array('pageTitle' => Lang::get("labels.ProductInventory"));
      $result = $this->products->ajax_attr($id);
      return view("admin.products.inventory.attribute_div")->with('result', $result);

  }

  public function addinventoryfromsidebar(Request $request){
      $title = array('pageTitle' => Lang::get("labels.ProductInventory"));
      $result = $this->products->addinventoryfromsidebar();
      return view("admin.products.inventory.add1", $title)->with('result', $result);

  }

  public function addnewstock(Request $request){

      $this->products->addnewstock($request);
      return redirect()->back()->withErrors([Lang::get("labels.inventoryaddedsuccessfully")]);

  }

  public function addminmax(Request $request){

    $this->products->addminmax($request);
    return redirect()->back()->withErrors([Lang::get("labels.Min max level added successfully")]);

  }

  public function displayProductImages(Request $request){

    $title  = array('pageTitle' => Lang::get("labels.AddImages"));
    $products_id = $request->id;
    $result = $this->products->displayProductImages($request);
    return view("admin.products/images/index", $title)->with('result', $result)->with('products_id',$products_id);

  }

  public function addProductImages($products_id){

    $title = array('pageTitle' => Lang::get("labels.AddImages"));
    $allimage = $this->images->getimages();
    $result =   $this->products->addProductImages($products_id);
    return view('admin.products.images.add', $title)->with('result', $result)->with('products_id',$products_id)->with('allimage',$allimage);

  }

  public function insertProductImages(Request $request){
      $product_id = $this->products->insertProductImages($request);
      return redirect()->back()->with('product_id', $product_id);

  }

  public function editProductImages($id){

    $allimage = $this->images->getimages();
    $products_images = $this->products->editProductImages($id);
    return view("admin/products/images/edit")->with('products_images', $products_images)->with('allimage',$allimage);

  }

  public function updateproductimage(Request $request){

    $title = array('pageTitle' => Lang::get("labels.Manage Values"));
    $result = $this->products->updateproductimage($request);
    return redirect()->back();

  }

  public function deleteproductimagemodal(Request $request){

      $products_id = $request->products_id;
      $id = $request->id;
      $result['data'] = array('products_id'=>$products_id, 'id'=>$id);
      return view("admin/products/images/modal/delete")->with('result', $result);

  }

  public function deleteproductimage(Request $request){
   $this->products->deleteproductimage($request);
   return redirect()->back()->with('success',trans('labels.DeletedSuccessfully'));

  }

  public function addproductattribute(Request $request){

    $title = array('pageTitle' => Lang::get("labels.AddAttributes"));
    $result = $this->products->addproductattribute($request);
    return view("admin.products.attribute.add", $title)->with('result', $result);

  }

  public function addnewdefaultattribute(Request $request){

      $products_attributes =  $this->products->addnewdefaultattribute($request);
      return($products_attributes);

  }

  public function editdefaultattribute(Request $request){

      $result = $this->products->editdefaultattribute($request);
      return view("admin/products/pop_up_forms/editdefaultattributeform")->with('result', $result);

  }

  public function updatedefaultattribute(Request $request){
    $products_attributes = $this->products->updatedefaultattribute($request);
    return($products_attributes);

  }

  public function deletedefaultattributemodal(Request $request){

      $products_id = $request->products_id;
      $products_attributes_id = $request->products_attributes_id;
      $result['data'] = array('products_id'=>$products_id, 'products_attributes_id'=>$products_attributes_id);
      return view("admin/products/modals/deletedefaultattributemodal")->with('result', $result);

  }

  public function deletedefaultattribute(Request $request){
    $products_attributes =  $this->products->deletedefaultattribute($request);
    return($products_attributes);
  }

  public function showoptions(Request $request){
        $products_attributes = $this->products->showoptions($request);
        return($products_attributes);
  }

  public function editoptionform(Request $request){
      $result = $this->products->editoptionform($request);
      return view("admin/products/pop_up_forms/editproductattributeoptionform")->with('result', $result);

  }

  public function updateoption(Request $request){
      $products_attributes = $this->products->updateoption($request);
      return($products_attributes);
  }

  public function showdeletemodal(Request $request){

    $products_id = $request->products_id;
  	$products_attributes_id = $request->products_attributes_id;
  	$result['data'] = array('products_id'=>$products_id, 'products_attributes_id'=>$products_attributes_id);
    return view("admin/products/modals/deleteproductattributemodal")->with('result', $result);

  }

  public function deleteoption(Request $request){

    $products_attributes = $this->products->deleteoption($request);
    return($products_attributes);

  }

  public function getOptionsValue(Request $request){
     $value = $this->products->getOptionsValue($request);
    if(count($value)>0){
        foreach($value as $value_data){
            $value_name[] = "<option value='".$value_data->products_options_values_id."'>".$value_data->options_values_name."</option>";
        }
    }else{
        $value_name = "<option value=''>".Lang::get("labels.ChooseValue")."</option>";
    }
      print_r($value_name);
  }

  public function currentstock(Request $request){

      $result = $this->products->currentstock($request);
      print_r(json_encode($result));

  }

  public function displayProductCondition(){
    $title = array('pageTitle' => Lang::get("labels.Conditions"));
    $conditions = $this->conditions->paginator(5);
    return view("admin.products.conditions.index")->with('conditions',$conditions);
  }

  public function addProductCondition(Request $request){
    $title = array('pageTitle' => Lang::get("labels.AddCondition"));
    $result = array();
    $result['languages'] = $this->myVarsetting->getLanguages();
    return view("admin.products.conditions.add",$title)->with('result', $result);
  }

  public function insertProductCondition(Request $request){
    $validator = validator()->make($request->all(), [
      'condition_name' => 'required',
      'isActive' => 'required'
    ]);

    if ($validator->fails()) {
        $error = $validator->errors()->first();
        return Redirect::back()->withInput($request->all())->withErrors($error);
    }
    $title = array('pageTitle' => Lang::get("labels.AddCondition"));
    $this->conditions->insert($request);
    return redirect()->back()->with('update', trans('labels.Content has been created successfully!'));
  }

  public function editProductCondition(Request $request){
    $title = array('pageTitle' => Lang::get("labels.EditCondition"));
    $condition_id = $request->id;
    $result['conditions'] = $this->conditions->edit($condition_id);
    $result['languages'] = $this->myVarsetting->getLanguages();
    return view("admin.products.conditions.edit",$title)->with('result', $result);
  }

  public function updateProductCondition(Request $request){
    $validator = validator()->make($request->all(), [
      'condition_name' => 'required',
      'status' => 'required'
    ]);

    if ($validator->fails()) {
        $error = $validator->errors()->first();
        return Redirect::back()->withInput($request->all())->withErrors($error);
    }

    $messages = 'update is not successfull' ;
    $title = array('pageTitle' => Lang::get("labels.EditCondition"));

    $this->conditions->updaterecord($request);
    return redirect()->back()->with('update', trans('labels.Content has been created successfully!'));

  }

  //delete Conditions
  public function deleteProductCondition(Request $request){
    $this->conditions->destroyrecord($request);
    return redirect()->back()->withErrors([Lang::get("labels.conditionsDeletedMessage")]);
  }

  public function filterProductCondition(Request $request){
    $name = $request->FilterBy;
    $param = $request->parameter;
    $title = array('pageTitle' => Lang::get("labels.Conditions"));
    $conditions = $this->conditions->filter($name,$param);
    return view("admin.products.conditions.index",$title)->with('conditions', $conditions)->with('name',$name)->with('param',$param);
  }


}

  
