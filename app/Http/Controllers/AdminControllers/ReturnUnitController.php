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


class ReturnUnitController extends Controller
{

    //
    public function __construct(Languages $language,Setting $setting)
    {
      $this->language = $language;
      $this->myVarsetting = new SiteSettingController($setting);
    }

    public function display(){
      $title = array('pageTitle' => Lang::get("labels.ReturnUnits"));
      $returns = DB::table('returns')->paginate(10);
      return view("admin.returns.index")->with('returns',$returns);
    }

}
