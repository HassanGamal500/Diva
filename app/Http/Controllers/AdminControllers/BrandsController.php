<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Core\Brands;
use App\Models\Core\Images;
use App\Models\Core\Setting;
use App\Models\Core\Languages;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Validator;
use Exception;
use Kyslik\ColumnSortable\Sortable;
use App\Http\Controllers\AdminControllers\SiteSettingController;


class BrandsController extends Controller
{

    //
    public function __construct(Brands $brands,Languages $language,Setting $setting)
    {
      $this->brands =$brands;
      $this->language = $language;
      $this->myVarsetting = new SiteSettingController($setting);
    }

    public function display(){
      $title = array('pageTitle' => Lang::get("labels.Brands"));
      $brands = $this->brands->paginator(5);
      return view("admin.brands.index")->with('brands',$brands);
    }

    public function add(Request $request){
      $title = array('pageTitle' => Lang::get("labels.AddBrand"));
      $result['languages'] = $this->myVarsetting->getLanguages();
      return view("admin.brands.add",$title)->with('result', $result);
    }

    public function insert(Request $request){
      $validator = validator()->make($request->all(), [
        'brand_name' => 'required',
        'isActive' => 'required'
      ]);
  
      if ($validator->fails()) {
          $error = $validator->errors()->first();
          return Redirect::back()->withInput($request->all())->withErrors($error);
      }
      $title = array('pageTitle' => Lang::get("labels.AddBrand"));
      $this->brands->insert($request);
      return redirect()->back()->with('update', trans('labels.Content has been created successfully!'));
    }

    public function edit(Request $request){
      $title = array('pageTitle' => Lang::get("labels.EditBrand"));
      $brand_id = $request->id;
      $result['brands'] = $this->brands->edit($brand_id);
      $result['languages'] = $this->myVarsetting->getLanguages();
      return view("admin.brands.edit",$title)->with('result', $result);
    }

    public function update(Request $request){
      $validator = validator()->make($request->all(), [
        'brand_name' => 'required',
        'status' => 'required'
      ]);
  
      if ($validator->fails()) {
          $error = $validator->errors()->first();
          return Redirect::back()->withInput($request->all())->withErrors($error);
      }

      $messages = 'update is not successfull' ;
      $title = array('pageTitle' => Lang::get("labels.EditBrand"));
      $this->validate($request, [
          'id' => 'required',
          'brand_name' => 'required'
      ]);

      $this->brands->updaterecord($request);
      return redirect()->back()->with('update', trans('labels.Content has been created successfully!'));

    }

    //delete Brands
    public function delete(Request $request){
      $this->brands->destroyrecord($request);
      return redirect()->back()->withErrors([Lang::get("labels.brandsDeletedMessage")]);
    }

    public function filter(Request $request){
      $name = $request->FilterBy;
      $param = $request->parameter;
      $title = array('pageTitle' => Lang::get("labels.Brands"));
      $brands = $this->brands->filter($name,$param);
      return view("admin.brands.index",$title)->with('brands', $brands)->with('name',$name)->with('param',$param);
    }



}
