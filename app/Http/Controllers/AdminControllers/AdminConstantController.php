<?php
namespace App\Http\Controllers\AdminControllers;
use App\Http\Controllers\Controller;
use Validator;
use App;
use Lang;
use DB;
use Hash;
use App\Administrator;
use Auth;
use Illuminate\Http\Request;
use App\Models\Core\Categories;
use App\Models\Core\Languages;
use App\Models\Core\Products;
use App\Models\Core\Images;
use App\Models\Core\ConstantBanner;
use App\Models\Core\Setting;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class AdminConstantController extends Controller
{

	public function __construct(Languages $language,Setting $setting, ConstantBanner $constantBanner)
    {
      $this->language = $language;
	  $this->myVarsetting = new SiteSettingController($setting);
	  $this->constantBanner = $constantBanner;
    }

	public function constantBanners(Request $request){
		$title = array('pageTitle' => Lang::get("labels.ListingConstantBanners"));
		$result = ConstantBanner::paginator();
		return view("admin.settings.web.banners.index", $title)->with(['result' => $result]);
	}

	public function addconstantbanner(Request $request){
		$title = array('pageTitle' => Lang::get("labels.AddConstantBanner"));

		$result = array();
		$message = array();

		//get function from other controller
		$result['languages'] = $this->myVarsetting->getLanguages();

		return view("admin.settings.web.banners.add", $title)->with(['result' => $result]);
	}

	public function addNewConstantBanner(Request $request){
		$validator = validator()->make($request->all(), [
			'banner_image' => 'required|image|mimes:jpeg,png,jpg,bmp,gif,svg',
			'status' => 'required',
		]);
	  
		if ($validator->fails()) {
			$error = $validator->errors()->first();
			return Redirect::back()->withInput($request->all())->withErrors($error);
		}
		//add banner
		$insert = $this->constantBanner->insert($request);

		return redirect()->back()->with('success', Lang::get("labels.BannerAddedMessage"));

	}

	public function editconstantbanner(Request $request){
		$title = array('pageTitle' => Lang::get("labels.EditBanner"));
		$result = array();
		$result['message'] = array();

		$banners = ConstantBanner::edit($request);
		$result['banners'] = $banners;

		//get function from other controller
		$myVar = new Languages();
		$result['languages'] = $myVar->getter();

		// dd($result);

		return view("admin.settings.web.banners.edit",$title)->with(['result' => $result]);
	}

	public function updateconstantBanner(Request $request){
		$validator = validator()->make($request->all(), [
			'banner_image' => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg',
			'status' => 'required',
		]);
		if ($validator->fails()) {
			$error = $validator->errors()->first();
			return Redirect::back()->withInput($request->all())->withErrors($error);
		}
		$title = array('pageTitle' => Lang::get("labels.EditBanner"));
		$exist = $this->constantBanner->updatebanner($request);
		return redirect()->back()->with('success', Lang::get("labels.BannerUpdatedMessage"));
	}

	public function deleteconstantBanner(Request $request){
		ConstantBanner::deletebanners($request);
		return redirect()->back()->withErrors([Lang::get("labels.BannerDeletedMessage")]);

	}
}
