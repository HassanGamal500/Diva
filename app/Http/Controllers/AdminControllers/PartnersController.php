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
use App\Models\Core\Languages;
use App\Models\Core\Partners;
use App\Models\Core\Setting;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class PartnersController extends Controller
{

	public function __construct(Languages $language,Setting $setting, Partners $partner)
    {
      $this->language = $language;
	  $this->myVarsetting = new SiteSettingController($setting);
	  $this->partner = $partner;
    }

	public function partners(Request $request){
		$title = array('pageTitle' => Lang::get("labels.ListingPartners"));
		$result = Partners::paginator();
		return view("admin.partners.index", $title)->with(['result' => $result]);
	}

	public function addPartner(Request $request){
		$title = array('pageTitle' => Lang::get("labels.AddPartner"));

		$result = array();
		$message = array();

		//get function from other controller
		$result['languages'] = $this->myVarsetting->getLanguages();

		return view("admin.partners.add", $title)->with(['result' => $result]);
	}

	public function addNewPartner(Request $request){
		// dd($request->all());
		$validator = validator()->make($request->all(), [
			'partner_image' => 'required|image|mimes:jpeg,png,jpg,bmp,gif,svg',
			'status' => 'required',
		]);
	  
		if ($validator->fails()) {
			$error = $validator->errors()->first();
			return Redirect::back()->withInput($request->all())->withErrors($error);
		}
		//add partner
		$insert = $this->partner->insert($request);

		return redirect()->back()->with('success', Lang::get("labels.PartnerAddedMessage"));

	}

	public function editPartner(Request $request){
		$title = array('pageTitle' => Lang::get("labels.EditPartner"));
		$result = array();
		$result['message'] = array();

		$partners = Partners::edit($request);
		$result['partners'] = $partners;

		//get function from other controller
		$myVar = new Languages();
		$result['languages'] = $myVar->getter();

		// dd($result);

		return view("admin.partners.edit",$title)->with(['result' => $result]);
	}

	public function updatePartner(Request $request){
		$validator = validator()->make($request->all(), [
			'partner_image' => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg',
			'status' => 'required',
		]);
		if ($validator->fails()) {
			$error = $validator->errors()->first();
			return Redirect::back()->withInput($request->all())->withErrors($error);
		}
		$title = array('pageTitle' => Lang::get("labels.EditPartner"));
		$exist = $this->partner->updatepartner($request);
		return redirect()->back()->with('success', Lang::get("labels.PartnerUpdatedMessage"));
	}

	public function deletePartner(Request $request){
		Partners::deletepartner($request);
		return redirect()->back()->withErrors([Lang::get("labels.PartnerDeletedMessage")]);

	}
}
