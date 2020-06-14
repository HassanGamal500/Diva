<?php

    namespace App\Http\Controllers\websiteControllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Illuminate\Support\Facades\Storage;
use Session;
use Illuminate\Support\Facades\App;
use Config;
//use Auth;
class genralController extends Controller
{

    public function home(){
        $language_id      = 	languageSite();
        $data['title']=trans('website.Home');
        $data['banners'] = DB::table('constant_banners')
            ->leftJoin('banner_description', 'constant_banners.banners_id', 'banner_description.constant_banners_id')
            ->where('banner_description.language_id', $language_id)
            ->where('status', '=', 1)
            ->get();
        $data['products'] = DB::table('products')
            ->leftJoin('products_description', 'products.products_id', 'products_description.products_id')
            ->where('products_description.language_id', $language_id)
            ->select('products_description.products_name','products.products_image','products.products_price')
            ->orderBy('products.products_id','DESC')
            ->limit(10)->get();
        $data['blogs'] = DB::table('blogs')
            ->leftJoin('blog_description', 'blog_description.blog_id', '=', 'blogs.blog_id')
            ->orderBy('blogs.blog_id', 'DESC')
            ->where('blog_description.language_id', $language_id)
            ->where('blogs.status','1')
            ->limit(3)
            ->get();
        return view("website.home")->with('data',$data);
    }

    public function aboutUs(){
        $lang=1;
        $data['title']=trans('website.About Us');
        $data['teams'] = DB::table('teams')->where('teams.status','1')->get();
        $data['partners'] = DB::table('partners')->where('partners.status','1')->get();
        return view("website.aboutUs")->with('data',$data);
    }

    public function blog(){
        $language_id      = 	languageSite();
        $data['title']=trans('website.blogs');
        $data['blogs'] = DB::table('blogs')
            ->leftJoin('blog_description', 'blog_description.blog_id', '=', 'blogs.blog_id')
            ->orderBy('blogs.blog_id', 'DESC')
            ->where('blog_description.language_id', $language_id)
            ->where('blogs.status','1')
            ->paginate(10);

        return view("website.blogs")->with('data',$data);
    }

    public function singleBlog(Request $request){
        $id=$request->id;
        $language_id      = 	languageSite();
        $data['blogs'] = DB::table('blogs')
            ->leftJoin('blog_description', 'blog_description.blog_id', '=', 'blogs.blog_id')
            ->where('blog_description.language_id', $language_id)
            ->where('blogs.status','1')
            ->where('blogs.blog_id',$id)
            ->get();
        $data['allBlogs'] = DB::table('blogs')
            ->leftJoin('blog_description', 'blog_description.blog_id', '=', 'blogs.blog_id')
            ->where('blog_description.language_id', $language_id)
            ->where('blogs.status','1')
            ->orderBy('blogs.blog_id', 'DESC')
            ->limit(5)
            ->get();
        $data['title']=$data['blogs'][0]->blog_title;
        $data['image']=$data['blogs'][0]->blog_image;
        return view("website.singleBlog")->with('data',$data);
    }

    public function contactUs(){
        $data['title']=trans('website.Contact Us');
        return view("website.contactUs")->with('data',$data);
    }

    public function addSubscriber(Request $request){
        $mail = $request->mail;
        $rules = [
            'mail' => 'required|email',
        ];
        $niceNames = [
            'mail' => trans('website.mail')
        ];
        $messages = [];
        $validator = \Validator::make(request()->all(), $rules, $messages, $niceNames);
        $getCount = DB::table('subscribers')
            ->where('subscribers_mail', $mail)
            ->count();
        if ($validator->passes()) {
            if ($getCount == 0) {
                DB::table('subscribers')->insert([
                    'subscribers_mail' => $mail
                ]);
                /*$gmail = DB::table('settings')
                    ->leftJoin('settings_descriptions','settings_descriptions.settings_description_id','settings.settings_id')
                    ->get()[0]->contact_email;
                \Mail::send('webSite.mails.contactMail', $data, function($message) use ($data,$gmail) {
                    $message->from($data['contact_us_email'],$data['contact_us_name']);
                    $message->to($gmail, trans('labels.appName'))
                        ->replyTo($data['contact_us_email'])
                        ->subject
                        ('United Arab Group');
                });*/
                return 1;
            } else {
                return 2;
            }
        } else {
            $error = implode("\n", $validator->errors()->all());
            return $error;
        }
    }

    public function sendContact(Request $request){
        $validator= validator()->make($request->all(),[
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
            'type' => 'required',
            'subject' => 'required',
            'message' => 'required'

        ]);
        
        if ($validator->fails()){

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            return response()->json($response);

        }

        if (filter_var(filter_var(strtolower($request->email), FILTER_SANITIZE_EMAIL), FILTER_VALIDATE_EMAIL) 
        && preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", strtolower($request->email)) 
        && preg_match("/[\p{Arabic}A-Za-z]/u", $request->name) 
        && !preg_match("/[0-9]/u", $request->name)
        && preg_match("/[0-9]/u", $request->phone)) {

            $name           =   $request->name;
            $phone          =   $request->phone;
            $email          =   $request->email;
            $type           =   $request->type;
            $message        =   $request->message;
            $subject        =   $request->subject;
            //inser into DB
            $id = DB::table('contacts')->insertGetId([
                'contact_name' => $name,
                'contact_email' => $email,
                'contact_phone' => $phone,
                'contact_type' => $type,
                'contact_message' => $message,
                'contact_subject'=>$subject,
                'contact_from' => 0
            ]);
        } else {
            if(!preg_match("/[\p{Arabic}A-Za-z]/u", $request->name) || preg_match("/[0-9]/u", $request->name)) {
                // $error = trans('admin.this name must contain only characters');
                $response = [
                    'status' => 0,
                    'message' => trans('labels.this name must contain only characters'),
                    'data' => []
                ];
                return response()->json($response);
            } elseif(!preg_match("/[0-9]/u", $request->phone)) {
                
                $response = [
                    'status' => 0,
                    'message' => trans('labels.number phone must contain only numbers'),
                    'data' => []
                ];
                return response()->json($response);
                
            }else {
                // $error = trans('admin.your email is not correct');
                $response = [
                    'status' => 0,
                    'message' => trans('labels.your email is not correct'),
                    'data' => []
                ];
                return response()->json($response);
            }
        }

        /*
        //collect data for me 
        $data = array(
            'contact_us_name'=>$name,
            'contact_us_email'=>$email,
            'contact_us_phone'=>$phone,
            'contact_us_message'=>$message,
            'contact_us_subject'=>$subject,
        );
        //get contact mail
        $gmail = DB::table('settings')
            ->leftJoin('settings_descriptions','settings_descriptions.settings_description_id','settings.settings_id')
            ->get()[0]->contact_email;

        //sending mail to us
        \Mail::send('website.mails.contactMail', $data, function($message) use ($data,$gmail,$name) {
            $message->from($data['contact_us_email'],$name);
            $message->to($gmail, 'IRONDOT')
                ->replyTo($data['contact_us_email'],$name)
                ->subject($data['contact_us_subject']);
        });

        $responseData = array('success'=>'1', 'data'=>'',  'message'=>"successful");
        $categoryResponse = json_encode($responseData);
        print $categoryResponse;*/
        return 1;
    }

    public function addSubscribes(Request $request){
        $validator= validator()->make($request->all(),[
            'email' => 'required|email'
        ]);
        
        if ($validator->fails()){

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            return response()->json($response);

        }

        if (filter_var(filter_var(strtolower($request->email), FILTER_SANITIZE_EMAIL), FILTER_VALIDATE_EMAIL) 
        && preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", strtolower($request->email))) {
            $email          =   $request->email;
            DB::table('subscribes')
                ->updateOrInsert(
                    ['subscribe_email' => $email],
                    []
                );
            return 1;
        } else {
            // $error = trans('admin.your email is not correct');
            $response = [
                'status' => 0,
                'message' => trans('labels.your email is not correct'),
                'data' => []
            ];
            return response()->json($response);
        }
    }

    public function terms (){
        $data['title']=trans('website.Terms & Condtions');
        $language_id      = 	languageSite();
        $data['pages'] = DB::table('pages')
            ->leftJoin('pages_description','pages_description.page_id','pages.page_id')
            ->where('pages_description.language_id',$language_id)
            ->where('pages.page_id','2')
            ->get();
        return view('website.pages')->with('data',$data);
    }

    public function refunds (){
        $data['title']=trans('website.Returns & Refunds');
        $language_id      = 	languageSite();
        $data['pages'] = DB::table('pages')
            ->leftJoin('pages_description','pages_description.page_id','pages.page_id')
            ->where('pages_description.language_id',$language_id)
            ->where('pages.page_id','3')
            ->get();
        return view('website.pages')->with('data',$data);
    }
    
    public function how (){
        $data['title']=trans('website.How Do We Work');
        $language_id      = 	languageSite();
        $data['pages'] = DB::table('pages')
            ->leftJoin('pages_description','pages_description.page_id','pages.page_id')
            ->where('pages_description.language_id',$language_id)
            ->where('pages.page_id','4')
            ->get();
        return view('website.pages')->with('data',$data);
    }

    public function faq (){
        $data['title']=trans('website.faqs');
        $language_id      = 	languageSite();
        $data['faqs'] = DB::table('faqs')
            ->leftJoin('faq_description','faq_description.faq_id','faqs.faq_id')
            ->where('faq_description.language_id',$language_id)
            ->where('faqs.status','1')
            ->get();
        return view('website.faq')->with('data',$data);
    }
    
    public function account(){
        $data['title']=trans('profile');
        $language_id      = 	languageSite();
        $data['profiles'] = DB::table('users')
            ->where('id', '=', auth()->guard('customer')->user()->id)
            ->first();
        return view('website.account')->with('data',$data);
    }
}