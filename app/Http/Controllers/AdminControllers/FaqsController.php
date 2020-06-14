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
use App\Models\Core\Faqs;
use App\Models\Core\Setting;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class FaqsController extends Controller
{

	public function __construct(Languages $language,Setting $setting, Faqs $faq)
    {
      $this->language = $language;
	  $this->myVarsetting = new SiteSettingController($setting);
	  $this->faq = $faq;
    }

	public function Faqs(Request $request){
		$title = array('pageTitle' => Lang::get("labels.ListingFaqs"));
		$result = Faqs::paginator();
		return view("admin.faqs.index", $title)->with(['result' => $result]);
	}

	public function addFaq(Request $request){
		$title = array('pageTitle' => Lang::get("labels.AddFaq"));

		$result = array();
		$message = array();

		//get function from other controller
		$result['languages'] = $this->myVarsetting->getLanguages();

		return view("admin.faqs.add", $title)->with(['result' => $result]);
	}

	public function addNewFaq(Request $request){
		// dd($request->all());
		$validator = validator()->make($request->all(), [
			'status' => 'required',
		]);
	  
		if ($validator->fails()) {
			$error = $validator->errors()->first();
			return Redirect::back()->withInput($request->all())->withErrors($error);
		}
		//add blog
		$insert = $this->faq->insert($request);

		return redirect()->back()->with('success', Lang::get("labels.FaqAddedMessage"));

	}

	public function editFaq(Request $request){
		$title = array('pageTitle' => Lang::get("labels.EditFaq"));
		$result = array();
		$result['message'] = array();

		$faqs = Faqs::edit($request);
		$result['faqs'] = $faqs;

		//get function from other controller
		$myVar = new Languages();
		$result['languages'] = $myVar->getter();

		// dd($result);

		return view("admin.faqs.edit",$title)->with(['result' => $result]);
	}

	public function updateFaq(Request $request){
		$validator = validator()->make($request->all(), [
			'blog_image' => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg',
			'status' => 'required',
		]);
		if ($validator->fails()) {
			$error = $validator->errors()->first();
			return Redirect::back()->withInput($request->all())->withErrors($error);
		}
		$title = array('pageTitle' => Lang::get("labels.EditBlog"));
		$exist = $this->faq->updatefaq($request);
		return redirect()->back()->with('success', Lang::get("labels.FaqUpdatedMessage"));
	}

	public function deleteFaq(Request $request){
		Faqs::deletefaq($request);
		return redirect()->back()->withErrors([Lang::get("labels.FaqDeletedMessage")]);

	}
}
