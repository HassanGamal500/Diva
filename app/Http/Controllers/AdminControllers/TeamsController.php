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
use App\Models\Core\Teams;
use App\Models\Core\Setting;
use App\Http\Controllers\AdminControllers\SiteSettingController;

class TeamsController extends Controller
{

	public function __construct(Languages $language,Setting $setting, Teams $team)
    {
      $this->language = $language;
	  $this->myVarsetting = new SiteSettingController($setting);
	  $this->team = $team;
    }

	public function teams(Request $request){
		$title = array('pageTitle' => Lang::get("labels.ListingTeams"));
		$result = Teams::paginator();
		return view("admin.teams.index", $title)->with(['result' => $result]);
	}

	public function addTeam(Request $request){
		$title = array('pageTitle' => Lang::get("labels.AddTeam"));

		$result = array();
		$message = array();

		//get function from other controller
		$result['languages'] = $this->myVarsetting->getLanguages();

		return view("admin.teams.add", $title)->with(['result' => $result]);
	}

	public function addNewTeam(Request $request){
		// dd($request->all());
		$validator = validator()->make($request->all(), [
			'team_name' => 'required|max:100',
			'team_professional' => 'required|max:100',
			'team_facebook' => 'required|max:100',
			'team_google' => 'required|max:100',
			'team_instagram' => 'required|max:100',
			'team_twitter' => 'required|max:100',
			'team_linkedin' => 'required|max:100',
			'team_image' => 'required|image|mimes:jpeg,png,jpg,bmp,gif,svg',
			'status' => 'required',
		]);
	  
		if ($validator->fails()) {
			$error = $validator->errors()->first();
			return Redirect::back()->withInput($request->all())->withErrors($error);
		}
		//add team
		$insert = $this->team->insert($request);

		return redirect()->back()->with('success', Lang::get("labels.TeamAddedMessage"));

	}

	public function editTeam(Request $request){
		$title = array('pageTitle' => Lang::get("labels.EditTeam"));
		$result = array();
		$result['message'] = array();

		$teams = Teams::edit($request);
		$result['teams'] = $teams;

		//get function from other controller
		$myVar = new Languages();
		$result['languages'] = $myVar->getter();

		// dd($result);

		return view("admin.teams.edit",$title)->with(['result' => $result]);
	}

	public function updateTeam(Request $request){
		$validator = validator()->make($request->all(), [
			'team_name' => 'required|max:100',
			'team_professional' => 'required|max:100',
			'team_facebook' => 'required|max:100',
			'team_google' => 'required|max:100',
			'team_instagram' => 'required|max:100',
			'team_twitter' => 'required|max:100',
			'team_linkedin' => 'required|max:100',
			'team_image' => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg',
			'status' => 'required',
		]);
	  
		if ($validator->fails()) {
			$error = $validator->errors()->first();
			return Redirect::back()->withInput($request->all())->withErrors($error);
		}
		$title = array('pageTitle' => Lang::get("labels.EditTeam"));
		$exist = $this->team->updateteam($request);
		return redirect()->back()->with('success', Lang::get("labels.TeamUpdatedMessage"));
	}

	public function deleteTeam(Request $request){
		Teams::deleteteam($request);
		return redirect()->back()->withErrors([Lang::get("labels.TeamDeletedMessage")]);

	}
}
