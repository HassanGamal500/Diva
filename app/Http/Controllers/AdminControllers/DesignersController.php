<?php

namespace App\Http\Controllers\AdminControllers;

use App\Models\Core\Designers;
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


class DesignersController extends Controller
{

    //
    public function __construct(Designers $designers,Languages $language,Setting $setting)
    {
      $this->designers =$designers;
      $this->language = $language;
      $this->myVarsetting = new SiteSettingController($setting);
    }

    public function display(){
      $title = array('pageTitle' => Lang::get("labels.Designers"));
      $designers = $this->designers->paginator();
      return view("admin.designers.index")->with('designers',$designers);
    }

    public function add(Request $request){
      $title = array('pageTitle' => Lang::get("labels.AddDesigner"));
      $result['languages'] = $this->myVarsetting->getLanguages();
      return view("admin.designers.add",$title)->with('result', $result);
    }

    public function insert(Request $request){
      $validator = validator()->make($request->all(), [
        'designer_name' => 'required',
        'isActive' => 'required'
      ]);
  
      if ($validator->fails()) {
          $error = $validator->errors()->first();
          return Redirect::back()->withInput($request->all())->withErrors($error);
      }
      $title = array('pageTitle' => Lang::get("labels.AddDesigner"));
      $this->designers->insert($request);
      return redirect()->back()->with('update', trans('labels.Content has been created successfully!'));
    }

    public function edit(Request $request){
      $title = array('pageTitle' => Lang::get("labels.EditDesigner"));
      $designer_id = $request->id;
      $result['designers'] = $this->designers->edit($designer_id);
      $result['languages'] = $this->myVarsetting->getLanguages();
      return view("admin.designers.edit",$title)->with('result', $result);
    }

    public function update(Request $request){
      $validator = validator()->make($request->all(), [
        'designer_name' => 'required',
        'status' => 'required'
      ]);
  
      if ($validator->fails()) {
          $error = $validator->errors()->first();
          return Redirect::back()->withInput($request->all())->withErrors($error);
      }

      $messages = 'update is not successfull' ;
      $title = array('pageTitle' => Lang::get("labels.EditDesigner"));
      $this->validate($request, [
          'id' => 'required',
          'designer_name' => 'required'
      ]);

      $this->designers->updaterecord($request);
      return redirect()->back()->with('update', trans('labels.Content has been created successfully!'));

    }

    //delete Designers
    public function delete(Request $request){
      $this->designers->destroyrecord($request);
      return redirect()->back()->withErrors([Lang::get("labels.DesignersDeletedMessage")]);
    }

    public function filter(Request $request){
      $name = $request->FilterBy;
      $param = $request->parameter;
      $title = array('pageTitle' => Lang::get("labels.Designers"));
      $designers = $this->designers->filter($name,$param);
      return view("admin.designers.index",$title)->with('designers', $designers)->with('name',$name)->with('param',$param);
    }



}
