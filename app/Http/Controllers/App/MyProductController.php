<?php

namespace App\Http\Controllers\App;

//validator is builtin class in laravel
use Validator;
use DB;
use DateTime;
use Hash;
use Auth;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Models\AppModels\Product;
use Carbon;

class MyProductController extends Controller
{
	public function __construct(Request $request){
        languageApi($request->language_id);
	}
	
	//Home Page
	public function homePage(Request $request){
		$categoryResponse = Product::homePage($request);
		print $categoryResponse;
	}
	
	// More Products
	public function moreproducts(Request $request){
		$categoryResponse = Product::moreproducts($request);
		print $categoryResponse;
	}
	
	// More Flashes
	public function moreflashes(Request $request){
		$categoryResponse = Product::moreflashes($request);
		print $categoryResponse;
	}

	//Home Page
	public function saerchProducts(Request $request){
		$categoryResponse = Product::saerchProducts($request);
		print $categoryResponse;
	}

	//get allcategories
	public function allcategories(Request $request){
    	$categoryResponse = Product::allcategories($request);
		print $categoryResponse;
	}

	//getallproducts
	public function getallproducts(Request $request){
    	$categoryResponse = Product::getallproducts($request);
		print $categoryResponse;
	}

	//Product Detail
	public function productDetail(Request $request){
    	$categoryResponse = Product::productDetail($request);
		print $categoryResponse;
	}

	// likeproduct
	public function likeproduct(Request $request){
    	$categoryResponse = Product::likeproduct($request);
		print $categoryResponse;
	}

	// likeProduct
	public function unlikeproduct(Request $request){
    	$categoryResponse = Product::unlikeproduct($request);
		print $categoryResponse;
	}

	//getfilters
	public function getfilters(Request $request){
    	$categoryResponse = Product::getfilters($request);
		print $categoryResponse;
	}

	//getfilterproducts
	public function getfilterproducts(Request $request){
      	$categoryResponse = Product::getfilterproducts($request);
		print $categoryResponse;
	}

	//getsearchdata
	public function getsearchdata(Request $request){
    	$categoryResponse = Product::getsearchdata($request);
		print $categoryResponse;
	}

	//getquantity
	public function getquantity(Request $request){
    	$response = Product::getquantity($request);
		print $response;
	}

	//shippingMethods
	public function shppingbyweight(Request $request){
    	$categoryResponse = Product::shppingbyweight($request);
		print $categoryResponse;
	}

	public function postproduct(Request $request){
    	$categoryResponse = Product::postproduct($request);
		print $categoryResponse;
	}

	public function updateproduct(Request $request){
    	$categoryResponse = Product::updateproduct($request);
		print $categoryResponse;
	}

	public function addproductimage(Request $request){
    	$categoryResponse = Product::addproductimage($request);
		print $categoryResponse;
	}

	public function deleteproductimage(Request $request){
    	$categoryResponse = Product::deleteproductimage($request);
		print $categoryResponse;
	}

	public function deleteproduct(Request $request){
    	$categoryResponse = Product::deleteproduct($request);
		print $categoryResponse;
	}

	public function getproductAttribute(Request $request){
    	$categoryResponse = Product::getProductAttribute($request);
		print $categoryResponse;
	}

	public function getallproductsforseller(Request $request){
    	$categoryResponse = Product::getallproductsforseller($request);
		print $categoryResponse;
	}

	public function myWishList(Request $request){
    	$categoryResponse = Product::myWishList($request);
		print $categoryResponse;
	}

}
