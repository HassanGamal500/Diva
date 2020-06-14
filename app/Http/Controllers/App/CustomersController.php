<?php
namespace App\Http\Controllers\App;

use Illuminate\Foundation\Auth\ThrottlesLogins;
use Validator;
use Mail;
use DateTime;
use Auth;
use DB;
use Hash;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Carbon;
use App\Models\AppModels\Customer;

class CustomersController extends Controller
{
	public function __construct(Request $request){
        languageApi($request->language_id);
    }

	//login
	public function processlogin(Request $request){
    $userResponse = Customer::processlogin($request);
		print $userResponse;
	}

	//registration
	public function processregistration(Request $request){
    	$userResponse = Customer::processregistration($request);
		print $userResponse;
	}

	//Verification Code
	public function verificationCode(Request $request){
		$userResponse = Customer::verificationCode($request);
		print $userResponse;
	}

	//processforgotPassword
	public function processforgotpassword(Request $request){
		$userResponse = Customer::processforgotpassword($request);
		print $userResponse;
	}
	
	public function verificationCodeForPassword(Request $request){
		$userResponse = Customer::verificationCodeForPassword($request);
		print $userResponse;
	}

	//Update Password
	function updatepassword(Request $request) {
		$userResponse = Customer::updatepassword($request);
		print $userResponse;
	}

	//Resend Verify
	public function resendVerify(Request $request){
    	$userResponse = Customer::resendVerify($request);
		print $userResponse;
	}

	//notify_me
	public function notify_me(Request $request){
    $categoryResponse = Customer::notify_me($request);
		print $categoryResponse;
	}

	//update profile
	public function updatecustomerinfo(Request $request){
    $userResponse = Customer::updatecustomerinfo($request);
		print $userResponse;

	}

	// Get Profile
	public function getProfile(Request $request){
		$userResponse = Customer::getProfile($request);
		print $userResponse;
	}

	//facebookregistration
	public function facebookregistration(Request $request){
	  $userResponse = Customer::facebookregistration($request);
		print $userResponse;


	}


	//googleregistration
	public function googleregistration(Request $request){
    $userResponse = Customer::googleregistration($request);
		print $userResponse;


		}

	//generate random password
	function createRandomPassword() {
		$pass = substr(md5(uniqid(mt_rand(), true)) , 0, 8);
		return $pass;
	}

	//generate random password
	function registerdevices(Request $request) {
    	$userResponse = Customer::registerdevices($request);
		print $userResponse;
	}

	function allChat(Request $request) {
		$userResponse = Customer::allChat($request);
		print $userResponse;
	}

	function allChatByUser(Request $request) {
		$userResponse = Customer::allChatByUser($request);
		print $userResponse;
	}

	function sendChat(Request $request) {
		$userResponse = Customer::sendChat($request);
		print $userResponse;
	}

	function requestseller(Request $request) {
		$userResponse = Customer::requestseller($request);
		print $userResponse;
	}

	function chat_list(Request $request) {
		$userResponse = Customer::chat_list($request);
		print $userResponse;
	}


}
