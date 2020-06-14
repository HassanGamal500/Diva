<?php

namespace App\Http\Controllers\AdminControllers;

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


class ContactController extends Controller
{

    //
    public function __construct(Languages $language,Setting $setting)
    {
      $this->language = $language;
      $this->myVarsetting = new SiteSettingController($setting);
    }

    public function displayWebsite(){
      $title = array('pageTitle' => Lang::get("labels.contacts"));
      $contacts = DB::table('contacts')->where('contact_from', '=', 0)->get();
      $seen = DB::table('contacts')->where('contact_from', '=', 0)->update(['contact_read' => 1]);
      return view("admin.contacts.index")->with('contacts',$contacts);
    }
    
    public function displayApp(){
      $title = array('pageTitle' => Lang::get("labels.contacts"));
      $contacts = DB::table('contacts')->where('contact_from', '=', 1)->get();
      $seen = DB::table('contacts')->where('contact_from', '=', 1)->update(['contact_read' => 1]);
      return view("admin.contacts.index")->with('contacts',$contacts);
    }
    
    public function deletecontacts(Request $request){
      // dd($request->all());
      DB::table('contacts')->where('contact_id', $request->contact_id)->delete();
      return redirect()->back()->withErrors([Lang::get("labels.ContactDeletedMessage")]);
  
    }

}
