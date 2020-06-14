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
use App\Models\Core\Blogs;
use App\Models\Core\Setting;
use App\Http\Controllers\AdminControllers\SiteSettingController;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class BlogsController extends Controller
{

	public function __construct(Languages $language,Setting $setting, Blogs $blog)
    {
      $this->language = $language;
	  $this->myVarsetting = new SiteSettingController($setting);
	  $this->blog = $blog;
    }

	public function Blogs(Request $request){
		$title = array('pageTitle' => Lang::get("labels.ListingBlogs"));
		$result = Blogs::paginator();
		return view("admin.blogs.index", $title)->with(['result' => $result]);
	}

	public function addBlog(Request $request){
		$title = array('pageTitle' => Lang::get("labels.AddBlog"));

		$result = array();
		$message = array();

		//get function from other controller
		$result['languages'] = $this->myVarsetting->getLanguages();

		return view("admin.blogs.add", $title)->with(['result' => $result]);
	}

	public function addNewBlog(Request $request){
		// dd($request->all());
		$validator = validator()->make($request->all(), [
		    'blog_date' => 'required',
			'blog_image' => 'required|image|mimes:jpeg,png,jpg,bmp,gif,svg',
			'status' => 'required',
		]);
	  
		if ($validator->fails()) {
			$error = $validator->errors()->first();
			return Redirect::back()->withInput($request->all())->withErrors($error);
		}
		//add blog
		$insert = $this->blog->insert($request);

		return redirect()->back()->with('success', Lang::get("labels.BlogAddedMessage"));

	}

	public function editBlog(Request $request){
		$title = array('pageTitle' => Lang::get("labels.EditBlog"));
		$result = array();
		$result['message'] = array();

		$blogs = Blogs::edit($request);
		$result['blogs'] = $blogs;

		//get function from other controller
		$myVar = new Languages();
		$result['languages'] = $myVar->getter();

		// dd($result);

		return view("admin.blogs.edit",$title)->with(['result' => $result]);
	}

	public function updateBlog(Request $request){
		$validator = validator()->make($request->all(), [
		    'blog_date' => 'required',
			'blog_image' => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg',
			'status' => 'required',
		]);
		if ($validator->fails()) {
			$error = $validator->errors()->first();
			return Redirect::back()->withInput($request->all())->withErrors($error);
		}
		// dd($request->all());
		$title = array('pageTitle' => Lang::get("labels.EditBlog"));
		$exist = $this->blog->updateblog($request);
		return redirect()->back()->with('success', Lang::get("labels.BlogUpdatedMessage"));
	}

	public function deleteBlog(Request $request){
		Blogs::deleteblog($request);
		return redirect()->back()->withErrors([Lang::get("labels.BlogDeletedMessage")]);

	}



	public function uploadImage(Request $request) {
        $CKEditor = $request->input('CKEditor');
        $funcNum  = $request->input('CKEditorFuncNum');
        $message  = $url = '';
        if ($request->hasFile('upload')) {
            $file = $request->file('upload');
            if ($file->isValid()) {
                $image = Storage::disk('edit_path')->putFile('CKEditor', $file);
                $url = url($image);
            } else {
                $message = 'An error occurred while uploading the file.';
            }
        } else {
            $message = 'No file uploaded.';
        }
        return '<script>window.parent.CKEDITOR.tools.callFunction('.$funcNum.', "'.$url.'", "'.$message.'")</script>';
	}
	

}
