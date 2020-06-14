<?php

namespace App\Models\AppModels;

use App\Http\Controllers\Admin\AdminSiteSettingController;
use App\Http\Controllers\App\AppSettingController;
use DB;
use Illuminate\Database\Eloquent\Model;
use App\Models\Core\Setting;
use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\AdminControllers\AlertController;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Redirect;

class Product extends Model
{

    public static function convertprice($current_price, $requested_currency)
    {
        $required_currency = DB::table('currencies')->where('is_current',1)->where('code', $requested_currency)->first();
        $products_price = $current_price * $required_currency->value;
        return $products_price;
    }

    public static function homePage($request)
    {
        $validator = validator()->make($request->all(), [
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $result = array();
        $data = array();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $banners = DB::table('constant_banners')
                ->join('banner_description', 'banner_description.constant_banners_id' ,'=', 'constant_banners.banners_id')
                ->where('language_id', '=', $language_id)
                ->select('banners_id', 'banners_image', 'banners_title', 'banners_body')
                ->where('status', '=', 1)
                ->get();
            $result['banners'] = $banners;
            $categories = DB::table('categories')
                ->join('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
                ->where('language_id', '=', $language_id)
                ->select('categories.categories_id', 'categories_image', 'categories_name')
                ->where('parent_id', '=', 0)
                ->where('categories_status', '=', 1)
                ->get();
            $result['categories'] = $categories;
            $flash = DB::table('flash_sale')
                ->join('products', 'products.products_id', '=', 'flash_sale.products_id')
                ->join('products_description', 'products_description.products_id', '=', 'products.products_id')
                ->where('language_id', '=', $language_id)
                ->select('products.products_id', 'products_name', 'products_image', 'products_price', 'purchase_type')
                ->orderBy('flash_sale.flash_sale_id', 'desc')
                ->where('flash_status', '=', 1)
                ->where('products_status', '=', 1)
                ->take(5)
                ->get();
                
            foreach ($flash as $products_data) {
                // array_push($result, $products_data);
                $products_id = $products_data->products_id;
                
                //like product
                if (!empty($request->customers_id)) {
                    $liked_customers_id = $request->customers_id;
                    $categories = DB::table('liked_products')
                        ->where('liked_products_id', '=', $products_id)
                        ->where('liked_customers_id', '=', $liked_customers_id)
                        ->get();
                    if (count($categories) > 0) {
                        $products_data->isLiked = '1';
                    } else {
                        $products_data->isLiked = '0';
                    }
                } else {
                    $products_data->isLiked = '0';
                }
                
                if (!empty($products_id)) {
                    $isSold = DB::table('products')->where('products_id', '=', $products_id)->select('is_sold')->first();
                    if ($isSold->is_sold == 1) {
                        $products_data->isSold = '1';
                    } else {
                        $products_data->isSold = '0';
                    }
                } else {
                    $products_data->isSold = '0';
                }
                
                $checkDiscount = DB::table('flash_sale')
                    ->where('products_id', '=', $products_id)
                    ->where('flash_status', '=', 1)
                    ->get();
                // dd($checkDiscount[0]->flash_sale_products_price);
                if ($checkDiscount->count() > 0) {
                    $oldPrice = DB::table('products')->where('products_id', '=', $products_id)->select('products_price')->first();
                    $old = $oldPrice->products_price;
                    $new = $checkDiscount[0]->flash_sale_products_price;
                    $discount = (100 - (($new / $old)*100));
                    $products_data->isDiscount = '1';
                    $products_data->old_price = $old;
                    $products_data->products_price = $new;
                    $products_data->discountPercent = round($discount, 1) . '%';
                } else {
                    $products_data->isDiscount = '0';
                    $products_data->old_price = '0';
                }
            }
            
            $result['flash_sales'] = $flash;
            
            $products = DB::table('products')
                ->join('products_description', 'products_description.products_id', '=', 'products.products_id')
                ->where('language_id', '=', $language_id)
                ->select('products.products_id', 'products_name', 'products_image', 'products_price', 'purchase_type')
                ->orderBy('products.products_id', 'desc')
                ->where('products_status', '=', 1)
                ->take(5)
                ->get();
                
            foreach ($products as $products_data) {
                // array_push($result, $products_data);
                $products_id = $products_data->products_id;
                
                //like product
                if (!empty($request->customers_id)) {
                    $liked_customers_id = $request->customers_id;
                    $categories = DB::table('liked_products')
                        ->where('liked_products_id', '=', $products_id)
                        ->where('liked_customers_id', '=', $liked_customers_id)
                        ->get();
                    if (count($categories) > 0) {
                        $products_data->isLiked = '1';
                    } else {
                        $products_data->isLiked = '0';
                    }
                } else {
                    $products_data->isLiked = '0';
                }
                
                if (!empty($products_id)) {
                    $isSold = DB::table('products')->where('products_id', '=', $products_id)->select('is_sold')->first();
                    if ($isSold->is_sold == 1) {
                        $products_data->isSold = '1';
                    } else {
                        $products_data->isSold = '0';
                    }
                } else {
                    $products_data->isSold = '0';
                }
                
                $checkDiscount = DB::table('flash_sale')
                    ->where('products_id', '=', $products_id)
                    ->where('flash_status', '=', 1)
                    ->get();
                // dd($checkDiscount[0]->flash_sale_products_price);
                if ($checkDiscount->count() > 0) {
                    $oldPrice = DB::table('products')->where('products_id', '=', $products_id)->select('products_price')->first();
                    $old = $oldPrice->products_price;
                    $new = $checkDiscount[0]->flash_sale_products_price;
                    $discount = (100 - (($new / $old)*100));
                    $products_data->isDiscount = '1';
                    $products_data->old_price = $old;
                    $products_data->products_price = $new;
                    $products_data->discountPercent = round($discount, 1) . '%';
                } else {
                    $products_data->isDiscount = '0';
                    $products_data->old_price = '0';
                }
            }
                
            $result['products'] = $products;
            $responseData = array('status' => '1', 'data' => $result, 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        return $categoryResponse;
    }
    
    public static function moreproducts($request)
    {
        $validator = validator()->make($request->all(), [
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $result = array();
        $data = array();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $products = DB::table('products')
                ->join('products_description', 'products_description.products_id', '=', 'products.products_id')
                ->where('language_id', '=', $language_id)
                ->select('products.products_id', 'products_name', 'products_image', 'products_price', 'purchase_type')
                ->orderBy('products.products_id', 'desc')
                ->where('products_status', '=', 1)
                ->get();
                
            foreach ($products as $products_data) {
                // array_push($result, $products_data);
                $products_id = $products_data->products_id;
                
                //like product
                if (!empty($request->customers_id)) {
                    $liked_customers_id = $request->customers_id;
                    $categories = DB::table('liked_products')
                        ->where('liked_products_id', '=', $products_id)
                        ->where('liked_customers_id', '=', $liked_customers_id)
                        ->get();
                    if (count($categories) > 0) {
                        $products_data->isLiked = '1';
                    } else {
                        $products_data->isLiked = '0';
                    }
                } else {
                    $products_data->isLiked = '0';
                }
                
                if (!empty($products_id)) {
                    $isSold = DB::table('products')->where('products_id', '=', $products_id)->select('is_sold')->first();
                    if ($isSold->is_sold == 1) {
                        $products_data->isSold = '1';
                    } else {
                        $products_data->isSold = '0';
                    }
                } else {
                    $products_data->isSold = '0';
                }
                
                $checkDiscount = DB::table('flash_sale')
                    ->where('products_id', '=', $products_id)
                    ->where('flash_status', '=', 1)
                    ->get();
                // dd($checkDiscount[0]->flash_sale_products_price);
                if ($checkDiscount->count() > 0) {
                    $oldPrice = DB::table('products')->where('products_id', '=', $products_id)->select('products_price')->first();
                    $old = $oldPrice->products_price;
                    $new = $checkDiscount[0]->flash_sale_products_price;
                    $discount = (100 - (($new / $old)*100));
                    $products_data->isDiscount = '1';
                    $products_data->old_price = $old;
                    $products_data->products_price = $new;
                    $products_data->discountPercent = round($discount, 1) . '%';
                } else {
                    $products_data->isDiscount = '0';
                    $products_data->old_price = '0';
                }
            }
                
            $result = $products;
            $responseData = array('status' => '1', 'data' => $result, 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        return $categoryResponse;
    }
    
    public static function moreflashes($request)
    {
        $validator = validator()->make($request->all(), [
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $result = array();
        $data = array();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $flash = DB::table('flash_sale')
                ->join('products', 'products.products_id', '=', 'flash_sale.products_id')
                ->join('products_description', 'products_description.products_id', '=', 'products.products_id')
                ->where('language_id', '=', $language_id)
                ->select('products.products_id', 'products_name', 'products_image', 'products_price', 'purchase_type')
                ->orderBy('flash_sale.flash_sale_id', 'desc')
                ->where('flash_status', '=', 1)
                ->where('products_status', '=', 1)
                ->get();
                
            foreach ($flash as $products_data) {
                // array_push($result, $products_data);
                $products_id = $products_data->products_id;
                
                //like product
                if (!empty($request->customers_id)) {
                    $liked_customers_id = $request->customers_id;
                    $categories = DB::table('liked_products')
                        ->where('liked_products_id', '=', $products_id)
                        ->where('liked_customers_id', '=', $liked_customers_id)
                        ->get();
                    if (count($categories) > 0) {
                        $products_data->isLiked = '1';
                    } else {
                        $products_data->isLiked = '0';
                    }
                } else {
                    $products_data->isLiked = '0';
                }
                
                if (!empty($products_id)) {
                    $isSold = DB::table('products')->where('products_id', '=', $products_id)->select('is_sold')->first();
                    if ($isSold->is_sold == 1) {
                        $products_data->isSold = '1';
                    } else {
                        $products_data->isSold = '0';
                    }
                } else {
                    $products_data->isSold = '0';
                }
                
                $checkDiscount = DB::table('flash_sale')
                    ->where('products_id', '=', $products_id)
                    ->where('flash_status', '=', 1)
                    ->get();
                // dd($checkDiscount[0]->flash_sale_products_price);
                if ($checkDiscount->count() > 0) {
                    $oldPrice = DB::table('products')->where('products_id', '=', $products_id)->select('products_price')->first();
                    $old = $oldPrice->products_price;
                    $new = $checkDiscount[0]->flash_sale_products_price;
                    $discount = (100 - (($new / $old)*100));
                    $products_data->isDiscount = '1';
                    $products_data->old_price = $old;
                    $products_data->products_price = $new;
                    $products_data->discountPercent = round($discount, 1) . '%';
                } else {
                    $products_data->isDiscount = '0';
                    $products_data->old_price = '0';
                }
            }
            
            $result = $flash;
            $responseData = array('status' => '1', 'data' => $result, 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        return $categoryResponse;
    }

    public static function saerchProducts($request)
    {
        $validator = validator()->make($request->all(), [
            'product_name' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $result = array();
        $data = array();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            // if($language_id == 1){
                $products = DB::table('products')
                ->join('products_description', 'products_description.products_id', '=', 'products.products_id')
                ->where('language_id', '=', $language_id)
                ->select('products_name', 'products_image', 'products_price', 'purchase_type')
                ->orderBy('products.products_id', 'desc')
                ->where('products_status', '=', 1)
                ->where('products_name', 'like', '%'.$request->product_name.'%')
                ->get();
            // } else {
            //     $products = DB::table('products')
            //     ->join('products_description', 'products_description.products_id', '=', 'products.products_id')
            //     ->where('language_id', '=', 2)
            //     ->select('products_name', 'products_image', 'products_price', 'purchase_type')
            //     ->orderBy('products.products_id', 'desc')
            //     ->where('products_status', '=', 1)
            //     ->where('products_name', 'like', '%'.$request->product_name.'%')
            //     ->get();
            // }
            
            $responseData = array('status' => '1', 'data' => $products, 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        return $categoryResponse;
    }

    public static function allcategories($request)
    {
        $language_id = $request->language_id;
        $categories_id = $request->categories_id;
        $result = array();
        $data = array();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            $item = DB::table('categories')
                ->leftJoin('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
                ->LeftJoin('image_categories', function ($join) {
                    $join->on('image_categories.image_id', '=', 'categories.categories_image')
                        ->where(function ($query) {
                            $query->where('image_categories.image_type', '=', 'THUMBNAIL')
                                ->where('image_categories.image_type', '!=', 'THUMBNAIL')
                                ->orWhere('image_categories.image_type', '=', 'ACTUAL');
                        });
                })
                ->LeftJoin('image_categories as icon_categories', function ($join) {
                    $join->on('icon_categories.image_id', '=', 'categories.categories_icon')
                        ->where(function ($query) {
                            $query->where('icon_categories.image_type', '=', 'THUMBNAIL')
                                ->where('icon_categories.image_type', '!=', 'THUMBNAIL')
                                ->orWhere('icon_categories.image_type', '=', 'ACTUAL');
                        });
                })

                ->select('categories.categories_id', 'categories_description.categories_name', 'categories.parent_id',
                    'image_categories.path as image', 'icon_categories.path as icon')
                ->where('categories_description.language_id', '=', $language_id);

            $categories = $item->where('categories_status', '1')
                ->orderby('categories_id', 'ASC')
                ->groupby('categories_id')
                ->get();

            if (count($categories) > 0) {

                $items = array();
                $index = 0;
                foreach ($categories as $category) {
                    array_push($items, $category);
                    $content = DB::table('products_to_categories')
                        ->LeftJoin('products', 'products.products_id', '=', 'products_to_categories.products_id')
                        ->LeftJoin('flash_sale', 'flash_sale.products_id', '=', 'products.products_id')
                        ->whereNotIn('products.products_id', function ($query) {
                            $query->select('flash_sale.products_id')->from('flash_sale');
                        })
                        ->where('products_to_categories.categories_id', $category->categories_id)
                        ->select(DB::raw('COUNT(DISTINCT products.products_id) as total_products'))->first();
                    $items[$index++]->total_products = $content->total_products;
                }

                $responseData = array('status' => '1', 'data' => $items, 'message' => "Returned all categories.", 'categories' => count($categories));
            } else {
                $responseData = array('status' => '1', 'data' => array(), 'message' => "No category found.", 'categories' => array());
            }
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        return $categoryResponse;
    }

    public static function getallproducts($request)
    {
        $validator = validator()->make($request->all(), [
            'type' => 'required',
            'sort_type' => 'nullable',
            'customers_id' => 'required',
            'categories_id' => 'required',
            'filter' => 'nullable|array',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $currentDate = time();
        $type = $request->type;
        $sort_type = $request->sort_type;
        //-------------------------------------------
        $sub_categories_id = $request->filter['sub_categories_id'];
        $brand_id = $request->filter['brand_id'];
        $designer_id = $request->filter['designer_id'];
        $city_id = $request->filter['city_id'];
        $for_whom = $request->filter['for_whom'];
        $size_id = $request->filter['size_id'];
        $color_id = $request->filter['color_id'];
        $condition_id = $request->filter['condition_id'];
        $is_sold = $request->filter['is_sold'];
        $minPrice = $request->filter['minPrice'];
        $maxPrice = $request->filter['maxPrice'];
        //-------------------------------------------
        // dd($request->filter);
        
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            if ($sort_type == "a to z") {
                $sortby = "products_name";
                $order = "ASC";
            } elseif ($sort_type == "z to a") {
                $sortby = "products_name";
                $order = "DESC";
            } elseif ($sort_type == "high to low") {
                $sortby = "products_price";
                $order = "DESC";
            } elseif ($sort_type == "low to high") {
                $sortby = "products_price";
                $order = "ASC";
            } else {
                $sortby = "products.products_id";
                $order = "desc";
            }

            $filterProducts = array();
            $eliminateRecord = array();
            
            $categories = DB::table('products')
                ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
                ->select('products.products_id', 'products_name', 'products_description', 'products_image', 'products_price', 'purchase_type')
                ->LeftJoin('products_to_categories', 'products.products_id', '=', 'products_to_categories.products_id')
                ->leftJoin('categories', 'categories.categories_id', '=', 'products_to_categories.categories_id')
                ->leftJoin('products_attributes', 'products_attributes.products_id', '=', 'products.products_id')
                ->leftJoin('products_options', 'products_options.products_options_id', '=', 'products_attributes.options_id')
                ->leftJoin('products_options_values', 'products_options_values.products_options_values_id', '=', 'products_attributes.options_values_id')
                // ->LeftJoin('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
                ->where('categories.parent_id', '=', $request->categories_id)
                ->groupBy('products.products_id');;
                // ->where('categories_description.language_id', '=', $language_id);

            $categories->where('products_description.language_id', '=', $language_id)
                ->where('products.products_status', '=', '1')
                ->orderBy($sortby, $order);
            
            if($type == 'rental'){
                $categories->where('products.purchase_type', '=', 1);
            } elseif($type == 'sell') {
                $categories->where('products.purchase_type', '=', 0);
            }
            
            if(isset($sub_categories_id)){
                $categories->where('products_to_categories.categories_id', '=', $sub_categories_id);
            }
            
            if(isset($brand_id)){
                $categories->where('products.brand_id', '=', $brand_id);
            }
            
            if(isset($designer_id)){
                $categories->where('products.designer_id', '=', $designer_id);
            }
            
            if(isset($city_id)){
                $categories->where('products.city_id', '=', $city_id);
            }
            
            if(isset($for_whom)){
                // dd(0);
                $categories->where('products.for_whom', '=', $for_whom);
            }
            
            if(isset($condition_id)){
                $categories->where('products.condition_id', '=', $condition_id);
            }
            
            if(isset($is_sold)){
                $categories->where('products.is_sold', '=', $is_sold);
            }
                
            if(isset($minPrice) && isset($maxPrice)){
                $categories->whereBetween('products.products_price', [$minPrice, $maxPrice]);
            }
            
            if(isset($size_id) && isset($color_id)){
                $categories->where('products_options_values.products_options_values_id', '=', $size_id);
            }
            
            if(isset($color_id) && isset($size_id)){
                $categories->where('products_options_values.products_options_values_id', '=', $color_id);
            }
            
            if(isset($size_id) && isset($color_id)){
                $categories->whereIn('products_options_values.products_options_values_id', [$size_id, $color_id]);
            }
            
            //count
            $data = $categories->get();
            // $dataTwo = $categories->get();
            // array_merge($data, $dataTwo);
            // $data[] = $dataTwo;
            // dd($data);
            $result = array();
            $result2 = array();
            //check if record exist
            if (count($data) > 0) {
                $index = 0;
                foreach ($data as $products_data) {
                    array_push($result, $products_data);
                    // array_push($result, $products_data);
                    // array_push($result, $products_data);
                    $products_id = $products_data->products_id;
                    
                    //like product
                    if (!empty($request->customers_id)) {
                        $liked_customers_id = $request->customers_id;
                        $categories = DB::table('liked_products')
                            ->where('liked_products_id', '=', $products_id)
                            ->where('liked_customers_id', '=', $liked_customers_id)
                            ->get();
                        if (count($categories) > 0) {
                            $result[$index]->isLiked = '1';
                        } else {
                            $result[$index]->isLiked = '0';
                        }
                    } else {
                        $result[$index]->isLiked = '0';
                    }
                    
                    if (!empty($products_id)) {
                        $isSold = DB::table('products')->where('products_id', '=', $products_id)->select('is_sold')->first();
                        if ($isSold->is_sold == 1) {
                            $result[$index]->isSold = '1';
                        } else {
                            $result[$index]->isSold = '0';
                        }
                    } else {
                        $result[$index]->isSold = '0';
                    }
                    
                    $checkDiscount = DB::table('flash_sale')
                        ->where('products_id', '=', $products_id)
                        ->where('flash_status', '=', 1)
                        ->get();
                    // dd($checkDiscount[0]->flash_sale_products_price);
                    if ($checkDiscount->count() > 0) {
                        $oldPrice = DB::table('products')->where('products_id', '=', $products_id)->select('products_price')->first();
                        $old = $oldPrice->products_price;
                        $new = $checkDiscount[0]->flash_sale_products_price;
                        $discount = (100 - (($new / $old)*100));
                        $products_data->isDiscount = '1';
                        $products_data->old_price = $old;
                        $products_data->products_price = $new;
                        $products_data->discountPercent = round($discount, 1) . '%';
                    } else {
                        $products_data->isDiscount = '0';
                        $products_data->old_price = '0';
                    }
                    
                    $index++;
                }
                $responseData = array('status' => '1', 'data' => $result, 'message' => trans('labels.Returned all products.'));
            } else {
                $responseData = array('status' => '1', 'data' => $result, 'message' => trans('labels.Empty record.'));
            }
            
        } else {
            $responseData = array('status' => '0', 'product_data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function productDetail($request)
    {
        $validator = validator()->make($request->all(), [
            'product_id' => 'required|exists:products,products_id',
            'customers_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $products_id = $request->product_id;
        $currentDate = time();

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            $sortby = "products.products_id";
            $order = "desc";

            $filterProducts = array();
            $eliminateRecord = array();
            

            $categories = DB::table('products')
                ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id');

            $categories->where('products_description.language_id', '=', $language_id)
                // ->where('products.products_status', '=', '0')
                ->where('products.products_id', '=', $products_id)
                ->select('products.products_id', 'products_image', 'products_price', 'products_status', 'customer_seller',
                'purchase_type', 'brand_id', 'designer_id', 'for_whom', 'condition_id', 'is_seller', 'sku_code',
                'products_name', 'products_description', 'rental_start', 'rental_end', 'products_price_insurance')
                ->orderBy($sortby, $order);

            //count
            $data = $categories->first();

            if($data->purchase_type == 0) {
                $data->purchase = trans('labels.Sell');
            } else {
                $data->purchase = trans('labels.Rental');
            }

            $result = array();
            $result2 = array();
            //check if record exist
            //multiple images
            $products_images = DB::table('products_images')
                ->select('id', 'image', 'sort_order')
                ->where('products_id', '=', $products_id)
                ->orderBy('sort_order', 'ASC')
                ->where('type', '=', 2)
                ->get();
            $data->sliders = $products_images;

            $sub_categories = DB::table('products_to_categories')
                ->leftjoin('categories', 'categories.categories_id', 'products_to_categories.categories_id')
                ->leftjoin('categories_description', 'categories_description.categories_id', 'products_to_categories.categories_id')
                ->select('categories.categories_id', 'categories_description.categories_name', 'categories.parent_id')
                ->where('products_id', '=', $products_id)
                ->where('categories_description.language_id', '=', $language_id)
                ->first();

            $main_categories = DB::table('categories')
                ->leftjoin('categories_description', 'categories_description.categories_id', 'categories.categories_id')
                ->select('categories.categories_id', 'categories_description.categories_name', 'categories.categories_image', 'categories.parent_id')
                ->where('categories.categories_id', '=', $sub_categories->parent_id)
                ->where('categories_description.language_id', '=', $language_id)
                ->first();

            $data->main_categories = $main_categories->categories_name;

            $data->sub_categories = $sub_categories->categories_name;

            $condition = DB::table('conditions')
                ->join('condition_description', 'condition_description.condition_id', '=', 'conditions.condition_id')
                ->where('language_id', '=', $language_id)
                ->where('conditions.condition_id', '=', $data->condition_id)
                ->select('conditions.condition_id', 'condition_name')
                ->first();

            $data->condition = $condition->condition_name;

            $brand = DB::table('brands')
                ->join('brand_description', 'brand_description.brand_id', '=', 'brands.brand_id')
                ->where('language_id', '=', $language_id)
                ->where('brands.brand_id', '=', $data->brand_id)
                ->select('brands.brand_id', 'brand_name')
                ->first();

            $data->brand = $brand->brand_name;
            
            $products_images_diva = DB::table('products_images')
                ->select('id', 'image', 'sort_order')
                ->where('products_id', '=', $products_id)
                ->orderBy('sort_order', 'ASC')
                ->where('type', '=', 1)
                ->get();
            $data->images_from_diva = $products_images_diva;
            
            $phoneExist = DB::table('settings')->where('id', '=', 124)->select('value')->first();
            $data->phoneExist = $phoneExist->value;
            
            if($phoneExist->value == 1){
                if($data->is_seller == 1){
                    $phoneNumber = DB::table('users')->where('id', '=', $data->customer_seller)->select('phone', 'whatsapp_number')->first();
                    $data->phone_number = $phoneNumber->phone;
                    $data->whatsapp_phone_number = $phoneNumber->whatsapp_number;
                } else {
                    $phoneNumber = DB::table('settings')->where('id', '=', 125)->select('value')->first();
                    $data->phone_number = $phoneNumber->value;
                    $whatsappPhoneNumber = DB::table('settings')->where('id', '=', 126)->select('value')->first();
                    $data->whatsapp_phone_number = $whatsappPhoneNumber->value;
                }
            }
            
            // $flash = DB::table('flash_sale')
            //     ->select('flash_sale_products_price')
            //     ->orderBy('flash_sale.flash_sale_id', 'desc')
            //     ->where('flash_status', '=', 1)
            //     ->where('products_status', '=', 1)
            //     ->first();
            
            $checkDiscount = DB::table('flash_sale')
                ->where('products_id', '=', $data->products_id)
                ->where('flash_status', '=', 1)
                ->get();
            // dd($checkDiscount[0]->flash_sale_products_price);
            if ($checkDiscount->count() > 0) {
                $oldPrice = DB::table('products')->where('products_id', '=', $products_id)->select('products_price')->first();
                $old = $oldPrice->products_price;
                $new = $checkDiscount[0]->flash_sale_products_price;
                $discount = (100 - (($new / $old)*100));
                $data->isDiscount = '1';
                $data->old_price = $old;
                $data->products_price = $new;
                $data->discountPercent = round($discount, 1) . '%';
            } else {
                $data->isDiscount = '0';
                $data->old_price = '0';
            }

            $reviews = DB::table('reviews')
                ->leftjoin('users', 'users.id', '=', 'reviews.customers_id')
                ->select('reviews.*', 'users.image')
                ->where('products_id', $products_id)
                ->where('reviews_status', '1')
                ->get();

            $avarage_rate = 0;
            $total_user_rated = 0;

            if (count($reviews) > 0) {

                $five_star = 0;
                $five_count = 0;

                $four_star = 0;
                $four_count = 0;

                $three_star = 0;
                $three_count = 0;

                $two_star = 0;
                $two_count = 0;

                $one_star = 0;
                $one_count = 0;

                foreach ($reviews as $review) {

                    //five star ratting
                    if ($review->reviews_rating == '5') {
                        $five_star += $review->reviews_rating;
                        $five_count++;
                    }

                    //four star ratting
                    if ($review->reviews_rating == '4') {
                        $four_star += $review->reviews_rating;
                        $four_count++;
                    }
                    //three star ratting
                    if ($review->reviews_rating == '3') {
                        $three_star += $review->reviews_rating;
                        $three_count++;
                    }
                    //two star ratting
                    if ($review->reviews_rating == '2') {
                        $two_star += $review->reviews_rating;
                        $two_count++;
                    }

                    //one star ratting
                    if ($review->reviews_rating == '1') {
                        $one_star += $review->reviews_rating;
                        $one_count++;
                    }

                }

                $five_ratio = round($five_count / count($reviews) * 100);
                $four_ratio = round($four_count / count($reviews) * 100);
                $three_ratio = round($three_count / count($reviews) * 100);
                $two_ratio = round($two_count / count($reviews) * 100);
                $one_ratio = round($one_count / count($reviews) * 100);

                $avarage_rate = (5 * $five_star + 4 * $four_star + 3 * $three_star + 2 * $two_star + 1 * $one_star) / ($five_star + $four_star + $three_star + $two_star + $one_star);
                $total_user_rated = count($reviews);
                $reviewed_customers = $reviews;
            } else {
                $reviewed_customers = array();
                $avarage_rate = 0;
                $total_user_rated = 0;

                $five_ratio = 0;
                $four_ratio = 0;
                $three_ratio = 0;
                $two_ratio = 0;
                $one_ratio = 0;
            }

            $data->rating = number_format($avarage_rate, 2);
            $data->total_user_rated = $total_user_rated;

            $data->five_ratio = $five_ratio;
            $data->four_ratio = $four_ratio;
            $data->three_ratio = $three_ratio;
            $data->two_ratio = $two_ratio;
            $data->one_ratio = $one_ratio;

            //review by users
            $data->reviewed_customers = $reviewed_customers;

            array_push($result, $data);
            $options = array();
            $attr = array();

            //like product
            if (!empty($request->customers_id)) {
                $liked_customers_id = $request->customers_id;
                $categories = DB::table('liked_products')->where('liked_products_id', '=', $products_id)->where('liked_customers_id', '=', $liked_customers_id)->get();
                if (count($categories) > 0) {
                    $result[0]->isLiked = '1';
                } else {
                    $result[0]->isLiked = '0';
                }
            } else {
                $result[0]->isLiked = '0';
            }

            // fetch all options add join from products_options table for option name
            $products_attribute = DB::table('products_attributes')->where('products_id', '=', $products_id)->groupBy('options_id')->get();
            if (count($products_attribute) > 0) {
                $index2 = 0;
                foreach ($products_attribute as $attribute_data) {
                    $option_name = DB::table('products_options')
                        ->leftJoin('products_options_descriptions', 'products_options_descriptions.products_options_id', '=', 'products_options.products_options_id')
                        ->select('products_options.products_options_id', 'products_options_descriptions.options_name as products_options_name', 'products_options_descriptions.language_id')
                        ->where('language_id', '=', $language_id)
                        ->where('products_options.products_options_id', '=', $attribute_data->options_id)
                        ->get();
                    if (count($option_name) > 0) {
                        $temp = array();
                        $temp_option['id'] = $attribute_data->options_id;
                        $temp_option['name'] = $option_name[0]->products_options_name;
                        $attr[$index2]['option'] = $temp_option;

                        // fetch all attributes add join from products_options_values table for option value name
                        $attributes_value_query = DB::table('products_attributes')
                            ->where('products_id', '=', $products_id)
                            ->where('options_id', '=', $attribute_data->options_id)
                            ->get();
                        foreach ($attributes_value_query as $products_option_value) {

                            //$option_value = DB::table('products_options_values')->leftJoin('products_options_values_descriptions','products_options_values_descriptions.products_options_values_id','=','products_options_values.products_options_values_id')->select('products_options_values.products_options_values_id', 'products_options_values_descriptions.options_values_name as products_options_values_name' )->where('products_options_values_descriptions.language_id','=', $language_id)->where('products_options_values.products_options_values_id','=', $products_option_value->options_values_id)->get();
                            $option_value = DB::table('products_options_values')
                                ->where('products_options_values_id', '=', $products_option_value->options_values_id)
                                ->first();

                            $attributes = DB::table('products_attributes')
                                ->where([
                                    ['products_id', '=', $products_id], 
                                    ['options_id', '=', $attribute_data->options_id], 
                                    ['options_values_id', '=', $products_option_value->options_values_id]
                                ])
                                ->get();
                            $temp_i['products_attributes_id'] = $attributes[0]->products_attributes_id;
                            $temp_i['id'] = $products_option_value->options_values_id;

                            if (!empty($option_value->products_options_values_name)) {
                                $temp_i['value'] = $option_value->products_options_values_name;
                            } else {
                                $temp_i['value'] = '';
                            }

                            // //check currency start
                            // $current_price = $products_option_value->options_values_price;

                            // $attribute_price = Product::convertprice($current_price, $requested_currency);


                            // //check currency end

                            // //$temp_i['price'] = $products_option_value->options_values_price;
                            // $temp_i['price'] = $attribute_price;
                            // $temp_i['price_prefix'] = $products_option_value->price_prefix;
                            // array_push($temp, $temp_i);

                        }
                        $attr[$index2]['values'] = $temp_i;
                        $result[0]->attributes = $attr;
                        $index2++;
                    }
                }
            } else {
                $result[0]->attributes = array();
            }

            $responseData = array('status' => '1', 'product_data' => $result, 'message' => trans('labels.Success'));
            
            
        } else {
            $responseData = array('status' => '0', 'product_data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function likeproduct($request)
    {
        $validator = validator()->make($request->all(), [
            'liked_products_id' => 'required',
            'customers_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $liked_products_id = $request->liked_products_id;
        $liked_customers_id = $request->customers_id;
        $date_liked = date('Y-m-d H:i:s');
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            //to avoide duplicate record
            DB::table('liked_products')->where([
                'liked_products_id' => $liked_products_id,
                'liked_customers_id' => $liked_customers_id,
            ])->delete();

            DB::table('liked_products')->insert([
                'liked_products_id' => $liked_products_id,
                'liked_customers_id' => $liked_customers_id,
                'date_liked' => $date_liked,
            ]);

            $response = DB::table('liked_products')->select('liked_products_id')
                ->where('liked_customers_id', '=', $liked_customers_id)
                ->get();

            DB::table('products')->where('products_id', '=', $liked_products_id)->increment('products_liked');

            $responseData = array('status' => '1', 'product_data' => $response, 'message' => "Product is liked.");

        } else {
            $responseData = array('status' => '0', 'product_data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function unlikeproduct($request)
    {
        $validator = validator()->make($request->all(), [
            'liked_products_id' => 'required',
            'customers_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $liked_products_id = $request->liked_products_id;
        $liked_customers_id = $request->customers_id;
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            DB::table('liked_products')->where([
                'liked_products_id' => $liked_products_id,
                'liked_customers_id' => $liked_customers_id,
            ])->delete();

            DB::table('products')->where('products_id', '=', $liked_products_id)->decrement('products_liked');

            $response = DB::table('liked_products')->select('liked_products_id')
                ->where('liked_customers_id', '=', $liked_customers_id)
                ->get();
                
            $responseData = array('status' => '1', 'product_data' => $response, 'message' => "Product is unliked.");
        } else {
            $responseData = array('status' => '0', 'product_data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function getfilters($request)
    {
        $validator = validator()->make($request->all(), [
            'customers_id' => 'required',
            'categories_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $categories_id = $request->categories_id;
        $currentDate = time();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            // To Get Max Price
            $price = DB::table('products_to_categories')
                ->leftJoin('categories', 'categories.categories_id', '=', 'products_to_categories.categories_id')
                ->join('products', 'products.products_id', '=', 'products_to_categories.products_id');
            // if (isset($categories_id) and !empty($categories_id)) {
            //     $price->where('products_to_categories.categories_id', '=', $categories_id);
            // }
            $price->where('categories.parent_id', '>', '0');

            $priceContent = $price->max('products_price');

            if (!empty($priceContent)) {
                $maxPrice = $priceContent;
            } else {
                $maxPrice = '';
            }

            // To Get Conditions
            $condition = DB::table('conditions')
                ->join('condition_description', 'condition_description.condition_id', '=', 'conditions.condition_id')
                ->where('language_id', '=', $language_id)
                ->select('conditions.condition_id', 'condition_name')
                ->get();

            // To Get Sub Categories
            $sub_categories = DB::table('categories')
                ->leftjoin('categories_description', 'categories_description.categories_id', 'categories.categories_id')
                ->select('categories.categories_id', 'categories_description.categories_name')
                ->where('categories.parent_id', '=', $categories_id)
                ->where('categories_description.language_id', '=', $language_id)
                ->get();
                
            // if($request->language_id == 1){
            //     $otherLang = 'Other';
            // } else {
            //     $otherLang = 'اخرى';
            // }
            
            $brands = DB::table('brands')
                ->LeftJoin('brand_description', 'brand_description.brand_id', '=', 'brands.brand_id')
                ->where('brands.status', '=', 1)
                ->select('brands.brand_id', 'brand_name')
                ->where('language_id', '=', $request->language_id)
                ->get();
            
            // $other = array('brand_id' => 0, 'brand_name' => $otherLang);
            // $brands[] = $other;
            
            $designers = DB::table('designers')
                ->LeftJoin('designer_description', 'designer_description.designer_id', '=', 'designers.designer_id')
                ->where('designers.status', '=', 1)
                ->select('designers.designer_id', 'designer_name')
                ->where('language_id', '=', $request->language_id)
                ->get();
            
            // $other = array('designer_id' => 0, 'designer_name' => $otherLang);
            // $designers[] = $other;
            
            $cities = DB::table('zones')
                ->join('zone_description', 'zone_description.zone_id', '=', 'zones.zone_id')
                ->where('language_id', '=', $request->language_id)
                ->where('zone_country_id', '=', 184)
                ->select('zones.zone_id as city_id', 'zone_name as city_name')
                ->get();

            // dd($priceContent);

            $product = DB::table('products')
                ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id');

            // if (isset($categories_id) and !empty($categories_id)) {
            //     $product->LeftJoin('products_to_categories', 'products.products_id', '=', 'products_to_categories.products_id')
            //     ->select('products_to_categories.*', 'products.*', 'products_description.*');
            // } else {
                $product->select('products.*', 'products_description.*');
            // }
            $product->where('products_description.language_id', '=', $language_id);

            // if (isset($categories_id) and !empty($categories_id)) {
            //     $product->where('products_to_categories.categories_id', '=', $categories_id);
            // }

            $products = $product->get();

            $index = 0;
            $optionsIdArray = array();
            $valueIdArray = array();
            foreach ($products as $products_data) {
                $option_name = DB::table('products_attributes')->where('products_id', '=', $products_data->products_id)->get();
                foreach ($option_name as $option_data) {

                    if (!in_array($option_data->options_id, $optionsIdArray)) {
                        $optionsIdArray[] = $option_data->options_id;
                    }

                    if (!in_array($option_data->options_values_id, $valueIdArray)) {
                        $valueIdArray[] = $option_data->options_values_id;
                    }
                }
            }

            // dd($optionsIdArray);

            if (!empty($optionsIdArray)) {

                $index3 = 0;
                $result = array();
                foreach ($optionsIdArray as $optionsIdArray) {
                    $option_name = DB::table('products_options')
                        ->leftJoin('products_options_descriptions', 'products_options_descriptions.products_options_id', '=', 'products_options.products_options_id')
                        ->select('products_options.products_options_id', 'products_options_descriptions.options_name as products_options_name', 'products_options_descriptions.language_id')
                        ->where('language_id', '=', $language_id)
                        ->where('products_options.products_options_id', '=', $optionsIdArray)
                        ->get();
                    if (count($option_name) > 0) {
                        $attribute_opt_val = DB::table('products_options_values')->where('products_options_id', $optionsIdArray)->get();
                        if (count($attribute_opt_val) > 0) {
                            $temp = array();
                            $temp_name['name'] = $option_name[0]->products_options_name;
                            $attr[$index3]['option'] = $temp_name;

                            foreach ($attribute_opt_val as $attribute_opt_val_data) {

                                $attribute_value = DB::table('products_options_values')
                                    ->leftJoin('products_options_values_descriptions', 'products_options_values_descriptions.products_options_values_id', '=', 'products_options_values.products_options_values_id')
                                    ->select('products_options_values.products_options_values_id', 'products_options_values_descriptions.options_values_name as products_options_values_name', 
                                    'products_options_values_descriptions.language_id', 'products_options_values_size', 'products_options_values_color')
                                    ->where('products_options_values.products_options_values_id', $attribute_opt_val_data->products_options_values_id)
                                    ->where('language_id', $language_id)
                                    ->get();

                                foreach ($attribute_value as $attribute_value_data) {

                                    if (in_array($attribute_value_data->products_options_values_id, $valueIdArray)) {
                                        $temp_value['value'] = $attribute_value_data->products_options_values_name;
                                        $temp_value['size'] = $attribute_value_data->products_options_values_size;
                                        $temp_value['color'] = $attribute_value_data->products_options_values_color;
                                        $temp_value['value_id'] = $attribute_value_data->products_options_values_id;
                                        array_push($temp, $temp_value);
                                    }
                                }
                                $attr[$index3]['values'] = $temp;
                            }
                            $index3++;
                        }
                        $result['selected'] = 0;
                        $result['maxPrice'] = $maxPrice;
                        $result['conditions'] = $condition;
                        $result['sub_categories'] = $sub_categories;
                        $result['brands'] = $brands;
                        $result['designers'] = $designers;
                        $result['cities'] = $cities;

                        $responseData = array('success' => '1', 'filters' => $attr, 'message' => "Returned all filters successfully.", 'results' => $result);
                    }
                }
            } else {
                $responseData = array('status' => '0', 'filters' => array(), 'message' => "Filter is empty for this category.");
            }
        } else {
            $responseData = array('status' => '0', 'product_data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function getfilterproducts($request)
    {
        $validator = validator()->make($request->all(), [
            'customers_id' => 'required',
            'language_id' => 'required',
            'categories_id' => 'nullable',
            // 'sub_categories_id' => 'nullable',
            'brand_id' => 'nullable',
            'designer_id' => 'nullable',
            'city_id' => 'nullable',
            'for_whom' => 'nullable',
            'size_id' => 'nullable',
            'color_id' => 'nullable',
            'condition_id' => 'nullable',
            'price' => 'nullable',
            'is_sold' => 'nullable',
            // 'filters' => 'required',
        ]);

        if ($validator->fails()) {
            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = '1';
        // $skip = $request->page_number . '0';
        $categories_id = $request->categories_id;
        // $sub_categories_id = $request->sub_categories_id;
        $brand_id = $request->brand_id;
        $designer_id = $request->designer_id;
        $city_id = $request->city_id;
        $for_whom = $request->for_whom;
        $size_id = $request->size_id;
        $color_id = $request->color_id;
        $condition_id = $request->condition_id;
        $is_sold = $request->is_sold;
        $minPrice = $request->price['minPrice'];
        $maxPrice = $request->price['maxPrice'];
        $currentDate = time();
        $type = $request->type;

        $filterProducts = array();
        $eliminateRecord = array();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            if ($type == "a to z") {
                $sortby = "products_name";
                $order = "ASC";
            } elseif ($type == "z to a") {
                $sortby = "products_name";
                $order = "DESC";
            } elseif ($type == "high to low") {
                $sortby = "products_price";
                $order = "DESC";
            } elseif ($type == "low to high") {
                $sortby = "products_price";
                $order = "ASC";
            } else {
                $sortby = "products.products_id";
                $order = "desc";
            }
  
            $filterProducts = array();
            $eliminateRecord = array();
            // if (!empty($request->filters)) {

                // foreach ($request->filters as $filters_attribute) {
                    // dd($filters_attribute['name']);

                    $data = DB::table('products_to_categories')
                        ->leftJoin('categories', 'categories.categories_id', '=', 'products_to_categories.categories_id')
                        ->join('products', 'products.products_id', '=', 'products_to_categories.products_id')
                        ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
                        ->leftJoin('products_attributes', 'products_attributes.products_id', '=', 'products.products_id')
                        ->leftJoin('products_options', 'products_options.products_options_id', '=', 'products_attributes.options_id')
                        ->leftJoin('products_options_values', 'products_options_values.products_options_values_id', '=', 'products_attributes.options_values_id')
                        ->select('products.*')
                        ->where('products_description.language_id','=', $language_id)
                        // ->where('manufacturers_info.languages_id','=', $language_id)
                        // ->whereBetween('products.products_price', [$minPrice, $maxPrice])
                        // ->where('products_to_categories.categories_id', '=', $categories_id)
                        // ->where('products_options.products_options_name', '=', $filters_attribute['name'])
                        // ->where('products_options_values.products_options_values_name', '=', $filters_attribute['value'])
                        ->where('categories.parent_id', '!=', '0')
                        // ->skip($skip)->take(10)
                        ->groupBy('products.products_id');
                        
                    if($categories_id != null){
                        $data->where('products_to_categories.categories_id', '=', $categories_id);
                    }
                    
                    if($brand_id != null){
                        $data->where('products.brand_id', '=', $brand_id);
                    }
                    
                    if($designer_id != null){
                        $data->where('products.designer_id', '=', $designer_id);
                    }
                    
                    // if($brand_id != null && $designer_id != null){
                    //     $data->where([
                    //         ['products.brand_id', '=', '$brand_id'],
                    //         ['products.designer_id', '=', '$designer_id'],
                    //     ]);
                    //     // $data->where('products.brand_id', '=', $brand_id);
                    // }
                    
                    if($city_id != null){
                        $data->where('products.city_id', '=', $city_id);
                    }
                    
                    if($for_whom != null){
                        // dd(0);
                        $data->where('products.for_whom', '=', $for_whom);
                    }
                    
                    if($condition_id != null){
                        $data->where('products.condition_id', '=', $condition_id);
                    }
                    
                    if($is_sold != null){
                        $data->where('products.is_sold', '=', $is_sold);
                    }
                        
                    if(!empty($request->price)){
                        $data->whereBetween('products.products_price', [$minPrice, $maxPrice]);
                    }
                    
                    if($size_id != null && $color_id == null){
                        $data->where('products_options_values.products_options_values_id', '=', $size_id);
                    }
                    
                    if($color_id != null && $size_id == null){
                        $data->where('products_options_values.products_options_values_id', '=', $color_id);
                    }
                    
                    if($size_id != null && $color_id != null){
                        $data->whereIn('products_options_values.products_options_values_id', [$size_id, $color_id]);
                    }

                    $getProducts= $data->get();
                        
                        
                        // dd($getProducts);
                        $result = array();
                        $index = 0;
                    if (count($getProducts) > 0) {
                        foreach ($getProducts as $products_data) {
                            // if (!in_array($getProduct->products_id, $eliminateRecord)) {
                                // $eliminateRecord[] = $getProduct->products_id;
                                // dd($getProduct);
                                // $products = DB::table('products_to_categories')
                                //     ->leftJoin('categories', 'categories.categories_id', '=', 'products_to_categories.categories_id')
                                //     ->leftJoin('categories_description', 'categories_description.categories_id', '=', 'products_to_categories.categories_id')
                                //     ->leftJoin('products', 'products.products_id', '=', 'products_to_categories.products_id')
                                //     ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
                                //     ->select('products_to_categories.*', 'categories_description.categories_name', 'categories.*', 'products.*', 'products_description.*')
                                //     ->where('products.products_id', '=', $getProduct->products_id)
                                //     ->where('categories.parent_id', '>', '0')
                                //     ->get();

                                
                                
                                // foreach ($products as $products_data) {
                                    //check currency start
                                    // $requested_currency = $request->currency_code;
                                    $current_price = $products_data->products_price;

                                    // if($current_currency == $request->currency){
                                    //     $products_price = $current_price;
                                    // }else{
                                    //     $products_price = Product::convertprice($current_price,  $requested_currency);
                                    //     ////////// for discount price    /////////
                                    //     if(!empty($products_data->discount_price)){
                                    //     $discount_price = Product::convertprice($products_data->discount_price, $requested_currency);
                                    //     $products_data->discount_price = $discount_price;
                                    //     }
                                    // }

                                    // $products_data->products_price = $products_price;
                                    // $products_data->currency = $requested_currency;
                                    //check currency end

                                    $products_id = $products_data->products_id;

                                    $detail = DB::table('products_description')
                                        ->where('products_id', '=', $products_id)
                                        ->where('language_id', '=', $request->language_id)
                                        ->get();
                                    $result2 = $detail;
                                    // $index3 = 0;
                                    // foreach ($detail as $detail_data) {

                                    //     //get function from other controller
                                    //     $myVar = new SiteSettingController();
                                    //     $languages = $myVar->getSingleLanguages($detail_data->language_id);

                                    //     $result2[$languages[$index3]->code] = $detail_data;
                                    //     $index3++;
                                    // }
                                    // multiple images
                                    $products_images = DB::table('products_images')
                                        ->select('products_images.*','image')
                                        ->where('products_id', '=', $products_id)
                                        ->orderBy('sort_order', 'ASC')
                                        ->get();

                                    // $categories = DB::table('products_to_categories')
                                    //     ->leftjoin('categories', 'categories.categories_id', 'products_to_categories.categories_id')
                                    //     ->leftjoin('categories_description', 'categories_description.categories_id', 'products_to_categories.categories_id')
                                    //     ->select('categories.categories_id', 'categories_description.categories_name', 'categories.categories_image', 'categories.categories_icon', 'categories.parent_id')
                                    //     ->where('products_id', '=', $products_id)
                                    //     ->where('categories_description.language_id', '=', $language_id)->get();

                                    // $products_data->categories = $categories;

                                    $reviews = DB::table('reviews')
                                        ->leftjoin('users', 'users.id', '=', 'reviews.customers_id')
                                        ->where('products_id', $products_data->products_id)
                                        ->where('reviews_status', '1')
                                        ->get();

                                    $avarage_rate = 0;
                                    $total_user_rated = 0;

                                    if (count($reviews) > 0) {

                                        $five_star = 0;
                                        $five_count = 0;

                                        $four_star = 0;
                                        $four_count = 0;

                                        $three_star = 0;
                                        $three_count = 0;

                                        $two_star = 0;
                                        $two_count = 0;

                                        $one_star = 0;
                                        $one_count = 0;

                                        foreach ($reviews as $review) {

                                            //five star ratting
                                            if ($review->reviews_rating == '5') {
                                                $five_star += $review->reviews_rating;
                                                $five_count++;
                                            }

                                            //four star ratting
                                            if ($review->reviews_rating == '4') {
                                                $four_star += $review->reviews_rating;
                                                $four_count++;
                                            }
                                            //three star ratting
                                            if ($review->reviews_rating == '3') {
                                                $three_star += $review->reviews_rating;
                                                $three_count++;
                                            }
                                            //two star ratting
                                            if ($review->reviews_rating == '2') {
                                                $two_star += $review->reviews_rating;
                                                $two_count++;
                                            }

                                            //one star ratting
                                            if ($review->reviews_rating == '1') {
                                                $one_star += $review->reviews_rating;
                                                $one_count++;
                                            }

                                        }

                                        $five_ratio = round($five_count / count($reviews) * 100);
                                        $four_ratio = round($four_count / count($reviews) * 100);
                                        $three_ratio = round($three_count / count($reviews) * 100);
                                        $two_ratio = round($two_count / count($reviews) * 100);
                                        $one_ratio = round($one_count / count($reviews) * 100);

                                        $avarage_rate = (5 * $five_star + 4 * $four_star + 3 * $three_star + 2 * $two_star + 1 * $one_star) / ($five_star + $four_star + $three_star + $two_star + $one_star);
                                        $total_user_rated = count($reviews);
                                        $reviewed_customers = $reviews;
                                    } else {
                                        $reviewed_customers = array();
                                        $avarage_rate = 0;
                                        $total_user_rated = 0;

                                        $five_ratio = 0;
                                        $four_ratio = 0;
                                        $three_ratio = 0;
                                        $two_ratio = 0;
                                        $one_ratio = 0;
                                    }

                                    $products_data->rating = number_format($avarage_rate, 2);
                                    $products_data->total_user_rated = $total_user_rated;

                                    $products_data->five_ratio = $five_ratio;
                                    $products_data->four_ratio = $four_ratio;
                                    $products_data->three_ratio = $three_ratio;
                                    $products_data->two_ratio = $two_ratio;
                                    $products_data->one_ratio = $one_ratio;

                                    //review by users
                                    $products_data->reviewed_customers = $reviewed_customers;

                                    array_push($result, $products_data);
                                    $options = array();
                                    $attr = array();

                                    //like product
                                    if (!empty($request->customers_id)) {
                                        $liked_customers_id = $request->customers_id;
                                        $categories = DB::table('liked_products')
                                        ->where('liked_products_id', '=', $products_id)
                                        ->where('liked_customers_id', '=', $liked_customers_id)
                                        ->get();

                                        if (count($categories) > 0) {
                                            $result[$index]->isLiked = '1';
                                        } else {
                                            $result[$index]->isLiked = '0';
                                        }
                                    } else {
                                        $result[$index]->isLiked = '0';
                                    }

                                    //get function from other controller
                                    $myVar = new SiteSettingController();
                                    $languages = $myVar->getLanguages();
                                    $data = array();
                                    // foreach ($languages as $languages_data) {
                                        $products_attribute = DB::table('products_attributes')->where('products_id', '=', $products_id)->groupBy('options_id')->get();
                                        if (count($products_attribute) > 0) {
                                            $index2 = 0;
                                            foreach ($products_attribute as $attribute_data) {
                                                $option_name = DB::table('products_options')
                                                    ->leftJoin('products_options_descriptions', 'products_options_descriptions.products_options_id', '=', 'products_options.products_options_id')
                                                    ->select('products_options.products_options_id', 'products_options_descriptions.options_name as products_options_name', 'products_options_descriptions.language_id')
                                                    ->where('language_id', '=', $request->language_id)
                                                    ->where('products_options.products_options_id', '=', $attribute_data->options_id)
                                                    ->get();

                                                if (count($option_name) > 0) {
                                                    $temp = array();
                                                    $temp_option['id'] = $attribute_data->options_id;
                                                    $temp_option['name'] = $option_name[0]->products_options_name;
                                                    $attr[$index2]['option'] = $temp_option;

                                                    // fetch all attributes add join from products_options_values table for option value name
                                                    $attributes_value_query = DB::table('products_attributes')
                                                        ->where('products_id', '=', $products_id)
                                                        ->where('options_id', '=', $attribute_data->options_id)
                                                        ->get();
                                                    
                                                    $index4 = 0;
                                                    foreach ($attributes_value_query as $products_option_value) {
                                                        $option_value = DB::table('products_options_values')
                                                            ->leftJoin('products_options_values_descriptions', 'products_options_values_descriptions.products_options_values_id', '=', 'products_options_values.products_options_values_id')
                                                            ->select('products_options_values.products_options_values_id', 'products_options_values_descriptions.options_values_name as products_options_values_name')
                                                            ->where('products_options_values_descriptions.language_id', '=', $request->language_id)
                                                            ->where('products_options_values.products_options_values_id', '=', $products_option_value->options_values_id)
                                                            ->get();
                                                        $attributes = DB::table('products_attributes')
                                                            ->where([
                                                                ['products_id', '=', $products_id], 
                                                                ['options_id', '=', $attribute_data->options_id], 
                                                                ['options_values_id', '=', $products_option_value->options_values_id]
                                                            ])
                                                            ->get();
                                                        $temp_i['products_attributes_id'] = $attributes[0]->products_attributes_id;
                                                        $temp_i['id'] = $products_option_value->options_values_id;
                                                        $temp_i['value'] = $option_value[0]->products_options_values_name;

                                                        //check currency start
                                                        $current_price = $products_option_value->options_values_price;

                                                        $attribute_price = $current_price;


                                                        //check currency end
                                                        // $temp_i['price'] = $attribute_price;
                                                        // $temp_i['price_prefix'] = $products_option_value->price_prefix;
                                                        array_push($temp, $temp_i);
                                                        $index4++;

                                                    }
                                                    $attr[$index2]['values'] = $temp;
                                                    $data = $attr;
                                                    $result[$index]->detail = $result2;
                                                    $index2++;
                                                }

                                            }
                                            $result[$index]->attributes = $data;
                                        } else {
                                            $result[$index]->attributes = array();
                                        }
                                    // }
                                    $index++;
                                // }
                            // }
                        }
                        $responseData = array('status' => '1', 'product_data' => $result, 'message' => trans('labels.Returned all products.'));
                    } else {
                        $total_record = array();
                        $responseData = array('status' => '1', 'product_data' => $filterProducts, 'message' => trans('labels.Empty record.'));
                    }
                // }
            // } else {

            //     $total_record = DB::table('products_to_categories')
            //         ->leftJoin('categories', 'categories.categories_id', '=', 'products_to_categories.categories_id')
            //         ->join('products', 'products.products_id', '=', 'products_to_categories.products_id')
            //         ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
            //         ->whereBetween('products.products_price', [$minPrice, $maxPrice])
            //         ->where('products_to_categories.categories_id', '=', $categories_id)
            //         ->where('categories.parent_id', '!=', '0')
            //         ->get();

            //     $products = DB::table('products_to_categories')
            //         ->leftJoin('categories', 'categories.categories_id', '=', 'products_to_categories.categories_id')
            //         ->join('products', 'products.products_id', '=', 'products_to_categories.products_id')
            //         ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
            //         ->select('products_to_categories.*', 'products.*', 'products_description.*')
            //         ->whereBetween('products.products_price', [$minPrice, $maxPrice])
            //         ->where('products_to_categories.categories_id', '=', $categories_id)
            //         ->where('categories.parent_id', '!=', '0')
            //         ->get();

            //     $result = array();
            //     //check if record exist
            //     if (count($products) > 0) {
            //         $index = 0;
            //         foreach ($products as $products_data) {
            //             //check currency start
            //             $requested_currency = $request->currency_code;
            //             // $current_price = $products_data->products_price;

            //                 // $products_price = Product::convertprice($current_price, $requested_currency);
            //                 // ////////// for discount price    /////////
            //                 // if(!empty($products_data->discount_price)){
            //                 // $discount_price = Product::convertprice($products_data->discount_price, $requested_currency);
            //                 // $products_data->discount_price = $discount_price;
            //                 // }


            //             $products_data->products_price = $products_price;
            //             // $products_data->currency = $requested_currency;
            //             //check currency end
            //             $products_id = $products_data->products_id;

            //             //multiple images
            //             $products_images = DB::table('products_images')
            //                 ->select('products_images.*')
            //                 ->where('products_id', '=', $products_id)
            //                 ->orderBy('sort_order', 'ASC')
            //                 ->get();

            //             $categories = DB::table('products_to_categories')
            //                 ->leftjoin('categories', 'categories.categories_id', 'products_to_categories.categories_id')
            //                 ->leftjoin('categories_description', 'categories_description.categories_id', 'products_to_categories.categories_id')
            //                 ->select('categories.categories_id', 'categories_description.categories_name', 'categories.categories_image', 'categories.categories_icon', 'categories.parent_id')
            //                 ->where('products_id', '=', $products_id)
            //                 ->where('categories_description.language_id', '=', $language_id)->get();

            //             $products_data->categories = $categories;

            //             $reviews = DB::table('reviews')
            //                 ->leftjoin('users', 'users.id', '=', 'reviews.customers_id')
            //                 ->select('reviews.*', 'users.avatar as image')
            //                 ->where('products_id', $products_data->products_id)
            //                 ->where('reviews_status', '1')
            //                 ->get();

            //             $avarage_rate = 0;
            //             $total_user_rated = 0;

            //             if (count($reviews) > 0) {

            //                 $five_star = 0;
            //                 $five_count = 0;

            //                 $four_star = 0;
            //                 $four_count = 0;

            //                 $three_star = 0;
            //                 $three_count = 0;

            //                 $two_star = 0;
            //                 $two_count = 0;

            //                 $one_star = 0;
            //                 $one_count = 0;

            //                 foreach ($reviews as $review) {

            //                     //five star ratting
            //                     if ($review->reviews_rating == '5') {
            //                         $five_star += $review->reviews_rating;
            //                         $five_count++;
            //                     }

            //                     //four star ratting
            //                     if ($review->reviews_rating == '4') {
            //                         $four_star += $review->reviews_rating;
            //                         $four_count++;
            //                     }
            //                     //three star ratting
            //                     if ($review->reviews_rating == '3') {
            //                         $three_star += $review->reviews_rating;
            //                         $three_count++;
            //                     }
            //                     //two star ratting
            //                     if ($review->reviews_rating == '2') {
            //                         $two_star += $review->reviews_rating;
            //                         $two_count++;
            //                     }

            //                     //one star ratting
            //                     if ($review->reviews_rating == '1') {
            //                         $one_star += $review->reviews_rating;
            //                         $one_count++;
            //                     }

            //                 }

            //                 $five_ratio = round($five_count / count($reviews) * 100);
            //                 $four_ratio = round($four_count / count($reviews) * 100);
            //                 $three_ratio = round($three_count / count($reviews) * 100);
            //                 $two_ratio = round($two_count / count($reviews) * 100);
            //                 $one_ratio = round($one_count / count($reviews) * 100);

            //                 $avarage_rate = (5 * $five_star + 4 * $four_star + 3 * $three_star + 2 * $two_star + 1 * $one_star) / ($five_star + $four_star + $three_star + $two_star + $one_star);
            //                 $total_user_rated = count($reviews);
            //                 $reviewed_customers = $reviews;
            //             } else {
            //                 $reviewed_customers = array();
            //                 $avarage_rate = 0;
            //                 $total_user_rated = 0;

            //                 $five_ratio = 0;
            //                 $four_ratio = 0;
            //                 $three_ratio = 0;
            //                 $two_ratio = 0;
            //                 $one_ratio = 0;
            //             }

            //             $products_data->rating = number_format($avarage_rate, 2);
            //             $products_data->total_user_rated = $total_user_rated;

            //             $products_data->five_ratio = $five_ratio;
            //             $products_data->four_ratio = $four_ratio;
            //             $products_data->three_ratio = $three_ratio;
            //             $products_data->two_ratio = $two_ratio;
            //             $products_data->one_ratio = $one_ratio;

            //             //review by users
            //             $products_data->reviewed_customers = $reviewed_customers;

            //             array_push($result, $products_data);
            //             $options = array();
            //             $attr = array();

            //             //like product
            //             if (!empty($request->customers_id)) {
            //                 $liked_customers_id = $request->customers_id;
            //                 $categories = DB::table('liked_products')->where('liked_products_id', '=', $products_id)->where('liked_customers_id', '=', $liked_customers_id)->get();
            //                 //print_r($categories);
            //                 if (count($categories) > 0) {
            //                     $result[$index]->isLiked = '1';
            //                 } else {
            //                     $result[$index]->isLiked = '0';
            //                 }
            //             } else {
            //                 $result[$index]->isLiked = '0';
            //             }

            //             // fetch all options add join from products_options table for option name
            //             $products_attribute = DB::table('products_attributes')
            //                 ->where('products_id', '=', $products_id)
            //                 ->groupBy('options_id')
            //                 ->get();
            //             if (count($products_attribute) > 0) {
            //                 $index2 = 0;
            //                 foreach ($products_attribute as $attribute_data) {
            //                     $option_name = DB::table('products_options')
            //                         ->leftJoin('products_options_descriptions', 'products_options_descriptions.products_options_id', '=', 'products_options.products_options_id')->select('products_options.products_options_id', 'products_options_descriptions.options_name as products_options_name', 'products_options_descriptions.language_id')->where('language_id', '=', $language_id)->where('products_options.products_options_id', '=', $attribute_data->options_id)->get();
            //                     $temp = array();
            //                     $temp_option['id'] = $attribute_data->options_id;
            //                     $temp_option['name'] = $option_name[0]->products_options_name;
            //                     $attr[$index2]['option'] = $temp_option;

            //                     // fetch all attributes add join from products_options_values table for option value name

            //                     $attributes_value_query = DB::table('products_attributes')->where('products_id', '=', $products_id)->where('options_id', '=', $attribute_data->options_id)->get();
            //                     foreach ($attributes_value_query as $products_option_value) {
            //                         $option_value = DB::table('products_options_values')->leftJoin('products_options_values_descriptions', 'products_options_values_descriptions.products_options_values_id', '=', 'products_options_values.products_options_values_id')->select('products_options_values.products_options_values_id', 'products_options_values_descriptions.options_values_name as products_options_values_name')->where('products_options_values_descriptions.language_id', '=', $language_id)->where('products_options_values.products_options_values_id', '=', $products_option_value->options_values_id)->get();
            //                         $attributes = DB::table('products_attributes')->where([['products_id', '=', $products_id], ['options_id', '=', $attribute_data->options_id], ['options_values_id', '=', $products_option_value->options_values_id]])->get();
            //                         $temp_i['products_attributes_id'] = $attributes[0]->products_attributes_id;
            //                         $temp_i['id'] = $products_option_value->options_values_id;
            //                         $temp_i['value'] = $option_value[0]->products_options_values_name;
            //                         //check currency start
            //                         $current_price = $products_option_value->options_values_price;


            //                         $attribute_price = Product::convertprice($current_price, $requested_currency);


            //                         //check currency end

            //                         $temp_i['price'] = $attribute_price;

            //                         $temp_i['price_prefix'] = $products_option_value->price_prefix;
            //                         array_push($temp, $temp_i);

            //                     }
            //                     $attr[$index2]['values'] = $temp;
            //                     $result[$index]->attributes = $attr;
            //                     $index2++;

            //                 }
            //             } else {
            //                 $result[$index]->attributes = array();
            //             }
            //             $index++;
            //         }
            //         $responseData = array('success' => '1', 'product_data' => $result, 'message' => trans('labels.Returned all products.'), 'total_record' => count($total_record));
            //     } else {
            //         $total_record = array();
            //         $responseData = array('success' => '1', 'product_data' => $result, 'message' => trans('labels.Empty record.'), 'total_record' => count($total_record));
            //     }

            // }
        } else {
            $responseData = array('status' => '0', 'product_data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function getsearchdata($request)
    {

        $language_id = $request->language_id;
        $searchValue = $request->searchValue;
        $currentDate = time();

        $result = array();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            $mainCategories = DB::table('categories')
                ->leftJoin('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
                ->select('categories.categories_id as id', 'categories.categories_image as image', 'categories_description.categories_name as name')
                ->where('categories_description.categories_name', 'LIKE', '%' . $searchValue . '%')
                ->where('categories_description.language_id', '=', $language_id)
                ->where('parent_id', '0')->get();

            $result['mainCategories'] = $mainCategories;

            $subCategories = DB::table('categories')
                ->leftJoin('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
                ->select('categories.categories_id as id', 'categories.categories_image as image', 'categories_description.categories_name as name')
                ->where('categories_description.categories_name', 'LIKE', '%' . $searchValue . '%')
                ->where('categories_description.language_id', '=', $language_id)
                ->where('parent_id', '1')->get();

            $result['subCategories'] = $subCategories;

            $manufacturers = DB::table('manufacturers')
                ->leftJoin('manufacturers_info', 'manufacturers_info.manufacturers_id', '=', 'manufacturers.manufacturers_id')
                ->select('manufacturers.manufacturers_id as id', 'manufacturers.manufacturers_image as image', 'manufacturers.manufacturer_name as name')
                ->where('manufacturers.manufacturer_name', 'LIKE', '%' . $searchValue . '%')
                ->get();

            $productsAttribute = DB::table('products')
                ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
                ->leftJoin('manufacturers', 'manufacturers.manufacturers_id', '=', 'products.manufacturers_id')
                ->leftJoin('manufacturers_info', 'manufacturers.manufacturers_id', '=', 'manufacturers_info.manufacturers_id')
                ->leftJoin('products_attributes', 'products_attributes.products_id', '=', 'products.products_id')
                ->leftJoin('products_options', 'products_options.products_options_id', '=', 'products_attributes.options_id')
                ->leftJoin('products_options_descriptions', 'products_options_descriptions.products_options_id', '=', 'products_options.products_options_id')
                ->leftJoin('products_options_values', 'products_options_values.products_options_values_id', '=', 'products_attributes.options_values_id')
                ->leftJoin('products_options_values_descriptions', 'products_options_values_descriptions.products_options_values_id', '=', 'products_options_values.products_options_values_id')
                ->LeftJoin('specials', function ($join) use ($currentDate) {
                    $join->on('specials.products_id', '=', 'products.products_id')->where('specials.status', '=', '1')->where('expires_date', '>', $currentDate);
                })
                ->LeftJoin('image_categories', function ($join) {
                    $join->on('image_categories.image_id', '=', 'products.products_image')
                        ->where(function ($query) {
                            $query->where('image_categories.image_type', '=', 'THUMBNAIL')
                                ->where('image_categories.image_type', '!=', 'THUMBNAIL')
                                ->orWhere('image_categories.image_type', '=', 'ACTUAL');
                        });
                })

                ->leftJoin('flash_sale', 'flash_sale.products_id', '=', 'products.products_id')
                //->select(DB::raw(time().' as server_time'),'products.*','products_description.*', 'manufacturers.*', 'manufacturers_info.manufacturers_url', 'specials.specials_new_products_price as discount_price','image_categories.path as products_image','users.*')

                ->select(DB::raw(time() . ' as server_time'), 'products.*', 'products_description.*', 'manufacturers.*', 'manufacturers_info.manufacturers_url', 'specials.specials_new_products_price as discount_price', 'specials.specials_new_products_price as discount_price', 'image_categories.path as products_image')

                ->orWhere('products_options_descriptions.options_name', 'LIKE', '%' . $searchValue . '%')
                ->whereNotIn('products.products_id', function ($query) {
                    $query->select('flash_sale.products_id')->from('flash_sale');
                })
                ->where('products_description.language_id', '=', $language_id)
                ->where('products.products_status', '=', 1)
                ->orWhere('products_options_values_descriptions.options_values_name', 'LIKE', '%' . $searchValue . '%')
                ->whereNotIn('products.products_id', function ($query) {
                    $query->select('flash_sale.products_id')->from('flash_sale');
                })
                ->where('products_description.language_id', '=', $language_id)
                ->where('products.products_status', '=', 1)
                ->orWhere('products_name', 'LIKE', '%' . $searchValue . '%')
                ->whereNotIn('products.products_id', function ($query) {
                    $query->select('flash_sale.products_id')->from('flash_sale');
                })
                ->where('products_description.language_id', '=', $language_id)
                ->where('products.products_status', '=', 1)
                ->orWhere('products_model', 'LIKE', '%' . $searchValue . '%')
                ->whereNotIn('products.products_id', function ($query) {
                    $query->select('flash_sale.products_id')->from('flash_sale');
                })
                ->where('products_description.language_id', '=', $language_id)
                ->where('products.products_status', '=', 1)
                ->groupBy('products.products_id')
                ->get();

            $result2 = array();
            //check if record exist
            if (count($productsAttribute) > 0) {
                $index = 0;
                foreach ($productsAttribute as $products_data) {
                    //check currency start
                    $requested_currency = $request->currency_code;
                    $current_price = $products_data->products_price;

                        $products_price = Product::convertprice($current_price, $requested_currency);
                        ////////// for discount price    /////////
                        if(!empty($products_data->discount_price)){
                        $discount_price = Product::convertprice($products_data->discount_price, $requested_currency);
                        $products_data->discount_price = $discount_price;
                        }


                    $products_data->products_price = $products_price;
                    $products_data->currency = $requested_currency;
                    //check currency end

                    $products_id = $products_data->products_id;

                    //multiple images
                    $products_images = DB::table('products_images')
                        ->LeftJoin('image_categories', function ($join) {
                            $join->on('image_categories.image_id', '=', 'products_images.image')
                                ->where(function ($query) {
                                    $query->where('image_categories.image_type', '=', 'THUMBNAIL')
                                        ->where('image_categories.image_type', '!=', 'THUMBNAIL')
                                        ->orWhere('image_categories.image_type', '=', 'ACTUAL');
                                });
                        })
                        ->select('products_images.*', 'image_categories.path as image')
                        ->where('products_id', '=', $products_id)->orderBy('sort_order', 'ASC')->get();

                    $categories = DB::table('products_to_categories')
                        ->leftjoin('categories', 'categories.categories_id', 'products_to_categories.categories_id')
                        ->leftjoin('categories_description', 'categories_description.categories_id', 'products_to_categories.categories_id')
                        ->select('categories.categories_id', 'categories_description.categories_name', 'categories.categories_image', 'categories.categories_icon', 'categories.parent_id')
                        ->where('products_id', '=', $products_id)
                        ->where('categories_description.language_id', '=', $language_id)->get();

                    $products_data->categories = $categories;

                    $reviews = DB::table('reviews')
                        ->leftjoin('users', 'users.id', '=', 'reviews.customers_id')
                        ->select('reviews.*', 'users.avatar as image')
                        ->where('products_id', $products_data->products_id)
                        ->where('reviews_status', '1')
                        ->get();

                    $avarage_rate = 0;
                    $total_user_rated = 0;

                    if (count($reviews) > 0) {

                        $five_star = 0;
                        $four_star = 0;
                        $three_star = 0;
                        $two_star = 0;
                        $one_star = 0;
                        foreach ($reviews as $review) {

                            //five star ratting
                            if ($review->reviews_rating == '5') {
                                $five_star += $review->reviews_rating;
                            }

                            //four star ratting
                            if ($review->reviews_rating == '4') {
                                $four_star += $review->reviews_rating;
                            }
                            //three star ratting
                            if ($review->reviews_rating == '3') {
                                $three_star += $review->reviews_rating;
                            }
                            //two star ratting
                            if ($review->reviews_rating == '2') {
                                $two_star += $review->reviews_rating;
                            }

                            //one star ratting
                            if ($review->reviews_rating == '1') {
                                $one_star += $review->reviews_rating;
                            }

                        }

                        $avarage_rate = (5 * $five_star + 4 * $four_star + 3 * $three_star + 2 * $two_star + 1 * $one_star) / ($five_star + $four_star + $three_star + $two_star + $one_star);
                        $total_user_rated = count($reviews);

                    } else {
                        $avarage_rate = 0;
                        $total_user_rated = 0;
                    }

                    $products_data->rating = number_format($avarage_rate, 2);
                    $products_data->total_user_rated = $total_user_rated;

                    array_push($result2, $products_data);
                    $options = array();
                    $attr = array();

                    //like product
                    if (!empty($request->customers_id)) {
                        $liked_customers_id = $request->customers_id;
                        $categories = DB::table('liked_products')->where('liked_products_id', '=', $products_id)->where('liked_customers_id', '=', $liked_customers_id)->get();
                        if (count($categories) > 0) {
                            $result2[$index]->isLiked = '1';
                        } else {
                            $result2[$index]->isLiked = '0';
                        }
                    } else {
                        $result2[$index]->isLiked = '0';
                    }

                    // fetch all options add join from products_options table for option name
                    $products_attribute = DB::table('products_attributes')->where('products_id', '=', $products_id)->groupBy('options_id')->get();
                    if (count($products_attribute) > 0) {
                        $index2 = 0;
                        foreach ($products_attribute as $attribute_data) {
                            $option_name = DB::table('products_options')
                                ->leftJoin('products_options_descriptions', 'products_options_descriptions.products_options_id', '=', 'products_options.products_options_id')->select('products_options.products_options_id', 'products_options_descriptions.options_name as products_options_name', 'products_options_descriptions.language_id')->where('language_id', '=', $language_id)->where('products_options.products_options_id', '=', $attribute_data->options_id)->get();
                            if (count($option_name) > 0) {
                                $temp = array();
                                $temp_option['id'] = $attribute_data->options_id;
                                $temp_option['name'] = $option_name[0]->products_options_name;
                                $attr[$index2]['option'] = $temp_option;

                                // fetch all attributes add join from products_options_values table for option value name
                                $attributes_value_query = DB::table('products_attributes')->where('products_id', '=', $products_id)->where('options_id', '=', $attribute_data->options_id)->get();
                                foreach ($attributes_value_query as $products_option_value) {
                                    $option_value = DB::table('products_options_values')->leftJoin('products_options_values_descriptions', 'products_options_values_descriptions.products_options_values_id', '=', 'products_options_values.products_options_values_id')->select('products_options_values.products_options_values_id', 'products_options_values_descriptions.options_values_name as products_options_values_name')->where('products_options_values_descriptions.language_id', '=', $language_id)->where('products_options_values.products_options_values_id', '=', $products_option_value->options_values_id)->get();
                                    $attributes = DB::table('products_attributes')->where([['products_id', '=', $products_id], ['options_id', '=', $attribute_data->options_id], ['options_values_id', '=', $products_option_value->options_values_id]])->get();
                                    $temp_i['products_attributes_id'] = $attributes[0]->products_attributes_id;
                                    $temp_i['id'] = $products_option_value->options_values_id;
                                    $temp_i['value'] = $option_value[0]->products_options_values_name;
                                    //check currency start
                                    $current_price = $products_option_value->options_values_price;


                                    $attribute_price = Product::convertprice($current_price, $requested_currency);

                                    //check currency end

                                    $temp_i['price'] = $attribute_price;
                                    $temp_i['price_prefix'] = $products_option_value->price_prefix;
                                    array_push($temp, $temp_i);

                                }
                                $attr[$index2]['values'] = $temp;
                                $result2[$index]->attributes = $attr;
                                $index2++;
                            }
                        }
                    } else {
                        $result2[$index]->attributes = array();
                    }
                    $index++;
                }

            }

            $result['products'] = $result2;
            $total_record = count($result['products']) + count($result['subCategories']) + count($result['mainCategories']);

            if (count($result['products']) == 0 and count($result['subCategories']) == 0 and count($result['mainCategories']) == 0) {
                $result = new \stdClass();
                $responseData = array('success' => '0', 'product_data' => $result, 'message' => "Search result is not found.", 'total_record' => $total_record);

            } else {
                $responseData = array('success' => '1', 'product_data' => $result, 'message' => "Returned all searched products.", 'total_record' => $total_record);
            }

        } else {
            $responseData = array('success' => '0', 'product_data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function getquantity($request)
    {
        $inventory_ref_id = '';
        $result = array();
        $products_id = $request['products_id'];
        $productsType = DB::table('products')->where('products_id', $products_id)->get();
        //check products type
        if ($productsType[0]->products_type == 1) {
            $attributes = array_filter($request['attributes']);
            $attributeid = implode(',', $attributes);

            $postAttributes = count($attributes);

            $inventories = DB::table('inventory')->where('products_id', $products_id)->get();
            $reference_ids = array();
            $stocks = 0;
            $stockIn = 0;
            foreach ($inventories as $inventory) {

                $totalAttribute = DB::table('inventory_detail')->where('inventory_detail.inventory_ref_id', '=', $inventory->inventory_ref_id)->get();
                $totalAttributes = count($totalAttribute);

                if ($postAttributes > $totalAttributes) {
                    $count = $postAttributes;
                } elseif ($postAttributes < $totalAttributes or $postAttributes == $totalAttributes) {
                    $count = $totalAttributes;
                }

                $individualStock = DB::table('inventory')->leftjoin('inventory_detail', 'inventory_detail.inventory_ref_id', '=', 'inventory.inventory_ref_id')
                    ->selectRaw('inventory.*')
                    ->whereIn('inventory_detail.attribute_id', [$attributeid])
                    ->where(DB::raw('(select count(*) from `inventory_detail` where `inventory_detail`.`attribute_id` in (' . $attributeid . ') and `inventory_ref_id`= "' . $inventory->inventory_ref_id . '")'), '=', $count)
                    ->where('inventory.inventory_ref_id', '=', $inventory->inventory_ref_id)
                    ->groupBy('inventory_detail.inventory_ref_id')
                    ->get();

                if (count($individualStock) > 0) {
                    $inventory_ref_id = $individualStock[0]->inventory_ref_id;
                    $stockIn += $individualStock[0]->stock;
                }

            }

            //get option name and value
            $options_names = array();
            $options_values = array();
            foreach ($attributes as $attribute) {
                $productsAttributes = DB::table('products_attributes')
                    ->leftJoin('products_options', 'products_options.products_options_id', '=', 'products_attributes.options_id')
                    ->leftJoin('products_options_values', 'products_options_values.products_options_values_id', '=', 'products_attributes.options_values_id')
                    ->select('products_attributes.*', 'products_options.products_options_name as options_name', 'products_options_values.products_options_values_name as options_values')
                    ->where('products_attributes_id', $attribute)->get();

                $options_names[] = $productsAttributes[0]->options_name;
                $options_values[] = $productsAttributes[0]->options_values;
            }

            $options_names_count = count($options_names);
            $options_names = implode("','", $options_names);
            $options_names = "'" . $options_names . "'";
            $options_values = "'" . implode("','", $options_values) . "'";

            //orders products
            $orders_products = DB::table('orders_products')->where('products_id', $products_id)->get();
            $stockOut = 0;
            foreach ($orders_products as $orders_product) {
                $totalAttribute = DB::table('orders_products_attributes')->where('orders_products_id', '=', $orders_product->orders_products_id)->get();
                $totalAttributes = count($totalAttribute);

                if ($postAttributes > $totalAttributes) {
                    $count = $postAttributes;
                } elseif ($postAttributes < $totalAttributes or $postAttributes == $totalAttributes) {
                    $count = $totalAttributes;
                }

                $products = DB::select("select orders_products.* from `orders_products` left join `orders_products_attributes` on `orders_products_attributes`.`orders_products_id` = `orders_products`.`orders_products_id` where `orders_products`.`products_id`='" . $products_id . "' and `orders_products_attributes`.`products_options` in (" . $options_names . ") and `orders_products_attributes`.`products_options_values` in (" . $options_values . ") and (select count(*) from `orders_products_attributes` where `orders_products_attributes`.`products_id` = '" . $products_id . "' and `orders_products_attributes`.`products_options` in (" . $options_names . ") and `orders_products_attributes`.`products_options_values` in (" . $options_values . ") and `orders_products_attributes`.`orders_products_id`= '" . $orders_product->orders_products_id . "') = " . $count . " and `orders_products`.`orders_products_id` = '" . $orders_product->orders_products_id . "' group by `orders_products_attributes`.`orders_products_id`");

                if (count($products) > 0) {
                    $stockOut += $products[0]->products_quantity;
                }
            }
            $stocks = $stockIn - $stockOut;

        } else {

            $stocks = 0;

            $stocksin = DB::table('inventory')->where('products_id', $products_id)->where('stock_type', 'in')->sum('stock');
            $stockOut = DB::table('inventory')->where('products_id', $products_id)->where('stock_type', 'out')->sum('stock');
            $stocks = $stocksin - $stockOut;
        }

        $responseData = array('success' => '1', 'stock' => $stocks, 'message' => "Attributes are returned successfull!");
        $response = json_encode($responseData);

        return $response;
    }

    public static function shppingbyweight($request)
    {
        $result = array();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $result = DB::table('products_shipping_rates')->where('products_shipping_status', '1')->get();
            $responseData = array('success' => '1', 'product_data' => $result, 'message' => "Returned all products.", 'total_record' => count($total_record));
        } else {
            $responseData = array('success' => '0', 'data' => $result, 'message' => "Unauthenticated call.");
        }

        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function postproduct($request)
    {
        $validator = validator()->make($request->all(), [
            'image' => 'required',
            'products_name' => 'required',
            'products_description' => 'required',
            'category_id' => 'required',
            'products_price' => 'required',
            'brand_id' => 'required',
            'brand_other' => 'nullable',
            'designer_id' => 'required',
            'designer_other' => 'nullable',
            'purchase_type' => 'required',
            'products_price_insurance' => 'nullable',
            'for_whom' => 'required',
            'condition_id' => 'required',
            'products_options_id' => 'required',
            'products_options_values_id' => 'required',
            'rental_start' => 'nullable',
            'rental_end' => 'nullable',
            'customer_seller' => 'required',
            'invoice_image' => 'required',
            'product_image' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $date_added	= date('Y-m-d h:i:s');
        $setting = new Setting();
        $myVarsetting = new SiteSettingController($setting);
        $myVaralter = new AlertController($setting);
        $languages = $myVarsetting->getLanguages();
        $result = array();
        $data = array();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            if ($request->image) {
                $image = substr($request->image, strpos($request->image, ",") + 1);
                $img = base64_decode($image);
                $dir="images/products/seller";
                if (!file_exists($dir) and !is_dir($dir)) {
                    mkdir($dir);
                }
                $uploadfile = $dir."/productSeller_".Str::random(60).".jpg";
                file_put_contents(base_path().'/'.$uploadfile, $img);
                $product_photo=$uploadfile;
            }

            if ($request->invoice_image) {
                $image = substr($request->invoice_image, strpos($request->invoice_image, ",") + 1);
                $img = base64_decode($image);
                $dir="images/products/seller/invoices";
                if (!file_exists($dir) and !is_dir($dir)) {
                    mkdir($dir);
                }
                $uploadfile = $dir."/productSellerInvoice_".Str::random(60).".jpg";
                file_put_contents(base_path().'/'.$uploadfile, $img);
                $invoice_photo=$uploadfile;
            }

            $sku = rand(0, 999999999);
            
            if($request->brand_id == 0){
                $brand = DB::table('brands')->insertGetId(['status' => 1]);
                foreach($languages as $languages_data){
                    $brandDesc = DB::table('brand_description')->insert([
                        'brand_name' => $request->brand_other,
                        'language_id' => $languages_data->languages_id,
                        'brand_id' => $brand,
                    ]);
                }
            } else {
                $brand = $request->brand_id;
            }
            
            if($request->designer_id == 0){
                $designer = DB::table('designers')->insertGetId(['status' => 1]);
                foreach($languages as $languages_data){
                    $designerDesc = DB::table('designer_description')->insert([
                        'designer_name' => $request->designer_other,
                        'language_id' => $languages_data->languages_id,
                        'designer_id' => $designer,
                    ]);
                }
            } else {
                $designer = $request->designer_id;
            }
            
            if($request->purchase_type == 0){
                $insurance = 0;
            } else {
                $insurance = $request->products_price_insurance;
            }

            $products_id = DB::table('products')->insertGetId([
                'products_image' => $product_photo,
                'products_quantity' => 1,
                'products_price' => $request->products_price,
                'created_at' => $date_added,
                'products_status' => 0,
                'is_current' => 1,
                'brand_id' => $brand,
                'designer_id' => $designer,
                'purchase_type' => $request->purchase_type,
                'for_whom' => $request->for_whom,
                'condition_id' => $request->condition_id,
                'is_seller' => 1,
                'customer_seller' => $request->customer_seller,
                'sku_code' => $sku,
                'request_status' => 1,
                'rental_start' => $request->rental_start,
                'rental_end' => $request->rental_end,
                'invoice_image' => $invoice_photo,
                'products_price_insurance' => $insurance,
            ]);

            $slug_flag = false;
            
            foreach($languages as $languages_data){
                $products_name = 'products_name';
                $products_description = 'products_description';
                //slug
                if($slug_flag==false){
                    $slug_flag=true;
                    $slug = $request->$products_name;
                    $old_slug = $request->$products_name;
                    $slug_count = 0;
                    do{
                        if($slug_count==0){
                            $currentSlug = $myVarsetting->slugify($slug);
                        }else{
                            $currentSlug = $myVarsetting->slugify($old_slug.'-'.$slug_count);
                        }
                        $slug = $currentSlug;
                        $checkSlug = DB::table('products')->where('products_slug', $currentSlug)->get();
                        $slug_count++;
                    }
                    while(count($checkSlug)>0);
                    DB::table('products')
                      ->where('products_id', $products_id)
                      ->update([
                        'products_slug' => $slug
                    ]);
                }
        
                $req_products_name = $request->$products_name ;
                $req_products_description = $request->$products_description;
                DB::table('products_description')->insert([
                    'products_name' => $req_products_name,
                    'language_id' => $languages_data->languages_id,
                    'products_id' => $products_id,
                    'products_description' => addslashes($req_products_description)
        
                ]);
            }

            DB::table('products_to_categories')
            ->insert([
                'products_id' => $products_id,
                'categories_id' => $request->category_id
            ]);

            if ($request->product_image) {
                $images = $request->product_image;
                if(!array_filter($images) == []){
                    $x = 1;
                    foreach ($images as  $key => $value) {
                        $image = substr($value['image'], strpos($value['image'], ",") + 1);
                        $img = base64_decode($image);
                        $dir="images/products/seller/images";
                        if (!file_exists($dir) and !is_dir($dir)) {
                            mkdir($dir);
                        }
                        $uploadfile = $dir."/product_".Str::random(60).".jpg";
                        file_put_contents(base_path().'/'.$uploadfile, $img);
                        $product_images = $uploadfile;
                        $insertImage = DB::table('products_images')
                            ->insert([
                                'image' => $product_images,
                                'products_id' => $products_id,
                                'sort_order' => $x,
                                'type' => 2
                            ]);
                        $x++;
                    }
                }
            }

            $products_attributes_id = DB::table('products_attributes')->insertGetId([
                'products_id' => $products_id,
                'options_id' => $request->products_options_id,
                'options_values_id' => $request->products_options_values_id,
                'options_values_price' => '0',
                'price_prefix' => '+',
                'is_default' => 1
            ]);
            
            $responseData = array('status' => '1', 'data' => array(), 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        return $categoryResponse;
    }

    public static function getProductAttribute($request)
    {
        $validator = validator()->make($request->all(), [
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $currentDate = time();
        $result = array();
        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            // To Get Conditions
            $conditions = DB::table('conditions')
                ->join('condition_description', 'condition_description.condition_id', '=', 'conditions.condition_id')
                ->where('language_id', '=', $language_id)
                ->select('conditions.condition_id', 'condition_name')
                ->get();

            $result['conditions'] = $conditions;

            // To Get Brands
            $brands = DB::table('brands')
                ->join('brand_description', 'brand_description.brand_id', '=', 'brands.brand_id')
                ->where('language_id', '=', $language_id)
                ->select('brands.brand_id', 'brand_name')
                ->get();

            $result['brands'] = $brands;

            // To Get Main Categories
            $main_categories = DB::table('categories')
                ->leftjoin('categories_description', 'categories_description.categories_id', 'categories.categories_id')
                ->select('categories.categories_id', 'categories_description.categories_name')
                ->where('categories.parent_id', '=', 0)
                ->where('categories_description.language_id', '=', $language_id)
                ->get();

            foreach($main_categories as $main_category) {
                // To Get Sub Categories
                $sub_categories = DB::table('categories')
                ->leftjoin('categories_description', 'categories_description.categories_id', 'categories.categories_id')
                ->select('categories.categories_id', 'categories_description.categories_name')
                ->where('categories.parent_id', '=', $main_category->categories_id)
                ->where('categories_description.language_id', '=', $language_id)
                ->get();

                $main_category->sub_categories = $sub_categories;
            }

            $result['main_categories'] = $main_categories;

            $colors = DB::table('products_options')
                ->leftJoin('products_options_descriptions', 'products_options_descriptions.products_options_id', '=', 'products_options.products_options_id')
                ->select('products_options.products_options_id', 'products_options_descriptions.options_name', 'products_options_descriptions.language_id')
                ->where('language_id', '=', $language_id)
                ->where('products_options.products_options_id', '=', 1)
                ->first();
            


            $attribute_value_color = DB::table('products_options_values')
                ->leftJoin('products_options_values_descriptions', 'products_options_values_descriptions.products_options_values_id', '=', 'products_options_values.products_options_values_id')
                ->select('products_options_values.products_options_values_id', 'products_options_values_descriptions.options_values_name', 'products_options_values_color')
                ->where('products_options_values.products_options_id', 1)
                ->where('language_id', $language_id)
                ->get();

            $colors->ortion_value = $attribute_value_color;
            
            $result['colors'] = $colors;

            $sizes = DB::table('products_options')
                ->leftJoin('products_options_descriptions', 'products_options_descriptions.products_options_id', '=', 'products_options.products_options_id')
                ->select('products_options.products_options_id', 'products_options_descriptions.options_name')
                ->where('language_id', '=', $language_id)
                ->where('products_options.products_options_id', '=', 4)
                ->first();
            
            $attribute_value = DB::table('products_options_values')
                ->leftJoin('products_options_values_descriptions', 'products_options_values_descriptions.products_options_values_id', '=', 'products_options_values.products_options_values_id')
                ->select('products_options_values.products_options_values_id', 'products_options_values_descriptions.options_values_name')
                ->where('products_options_values.products_options_id', 4)
                ->where('language_id', $language_id)
                ->get();

            $sizes->ortion_value = $attribute_value;
            
            $result['sizes'] = $sizes;


            $responseData = array('status' => '1', 'data' => $result, 'message' => "Returned all attributes successfully.");

        } else {
            $responseData = array('status' => '0', 'product_data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function getallproductsforseller($request)
    {
        $validator = validator()->make($request->all(), [
            'user_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $currentDate = time();

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            $sortby = "products.products_id";
            $order = "desc";
        

            $filterProducts = array();
            $eliminateRecord = array();
            
            $categories = DB::table('products')
                ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
                ->select('products.products_id', 'products_name', 'products_image', 'products_price', 'purchase_type', 'request_status', 'products.created_at')
                ->where('products_description.language_id', '=', $language_id)
                ->where('products.products_status', '=', '0')
                ->where('is_seller', '=', 1)
                ->where('customer_seller', '=', $request->user_id)
                ->orderBy($sortby, $order);

            //count
            $data = $categories->get();

            $result = array();
            $result2 = array();
            //check if record exist
            if (count($data) > 0) {
                
                $responseData = array('status' => '1', 'data' => $data, 'message' => trans('labels.Returned all products.'));
            } else {
                $responseData = array('status' => '1', 'data' => $data, 'message' => trans('labels.Empty record.'));
            }
            
        } else {
            $responseData = array('status' => '0', 'product_data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }

    public static function updateproduct($request){
        $validator = validator()->make($request->all(), [
            'products_id' => 'required',
            'image' => 'required',
            'products_name' => 'required',
            'products_description' => 'required',
            'category_id' => 'required',
            'products_price' => 'required',
            'brand_id' => 'required',
            'brand_other' => 'nullable',
            'designer_id' => 'required',
            'designer_other' => 'nullable',
            'purchase_type' => 'required',
            'products_price_insurance' => 'nullable',
            'for_whom' => 'required',
            'condition_id' => 'required',
            'products_options_id' => 'required',
            'products_options_values_id' => 'required',
            'rental_start' => 'nullable',
            'rental_end' => 'nullable',
            'customer_seller' => 'required',
            'invoice_image' => 'nullable',
            'product_image' => 'nullable',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $setting = new Setting();
            $myVarsetting = new SiteSettingController($setting);
            $myVaralter = new AlertController($setting);
            $language_id      =   $request->language_id;
            $products_id      =   $request->products_id;
            $products_last_modified	= date('Y-m-d h:i:s');
            $languages = $myVarsetting->getLanguages();

            $getImage = DB::table('products')->where('products_id', '=', $products_id)->first();
            
            if ($request->image) {
                $image = substr($request->image, strpos($request->image, ",") + 1);
                $img = base64_decode($image);
                $dir="images/products/seller";
                if (!file_exists($dir) and !is_dir($dir)) {
                    mkdir($dir);
                }
                $uploadfile = $dir."/productSeller_".Str::random(60).".jpg";
                file_put_contents(base_path().'/'.$uploadfile, $img);
                $product_photo=$uploadfile;
                $myFile = public_path($getImage->products_image);
                File::delete($myFile);
                DB::table('products')->where('products_id', '=', $products_id)->update([
                    'products_image' => $product_photo,
                ]);
            }

            if ($request->invoice_image) {
                $image = substr($request->invoice_image, strpos($request->invoice_image, ",") + 1);
                $img = base64_decode($image);
                $dir="images/products/seller/invoices";
                if (!file_exists($dir) and !is_dir($dir)) {
                    mkdir($dir);
                }
                $uploadfile = $dir."/productSellerInvoice_".Str::random(60).".jpg";
                file_put_contents(base_path().'/'.$uploadfile, $img);
                $invoice_photo=$uploadfile;
                $myFile = public_path($getImage->invoice_image);
                File::delete($myFile);
                DB::table('products')->where('products_id', '=', $products_id)->update([
                    'invoice_image' => $invoice_photo,
                ]);
            }
            
            if($request->brand_id == 0){
                $brand = DB::table('brands')->insertGetId(['status' => 1]);
                foreach($languages as $languages_data){
                    $brandDesc = DB::table('brand_description')->insert([
                        'brand_name' => $request->brand_other,
                        'language_id' => $languages_data->languages_id,
                        'brand_id' => $brand,
                    ]);
                }
            } else {
                $brand = $request->brand_id;
            }
            
            if($request->designer_id == 0){
                $designer = DB::table('designers')->insertGetId(['status' => 1]);
                foreach($languages as $languages_data){
                    $designerDesc = DB::table('designer_description')->insert([
                        'designer_name' => $request->designer_other,
                        'language_id' => $languages_data->languages_id,
                        'designer_id' => $designer,
                    ]);
                }
            } else {
                $designer = $request->designer_id;
            }
            
            if($request->purchase_type == 0){
                $insurance = 0;
            } else {
                $insurance = $request->products_price_insurance;
            }

            DB::table('products')->where('products_id', '=', $products_id)->update([
                'products_price' => $request->products_price,
                'updated_at' => $products_last_modified,
                'brand_id' => $brand,
                'designer_id' => $designer,
                'purchase_type' => $request->purchase_type,
                'for_whom' => $request->for_whom,
                'condition_id' => $request->condition_id,
                'rental_start' => $request->rental_start,
                'rental_end' => $request->rental_end,
                'products_price_insurance' => $insurance,
            ]);

            foreach($languages as $languages_data){
                $products_name = 'products_name';
                $products_description = 'products_description';
                

                $req_products_name = $request->$products_name;
                $req_products_description = $request->$products_description;

                DB::table('products_description')->where('products_id', '=', $products_id)
                    ->where('language_id', '=', $languages_data->languages_id)->update([
                        'products_name' => $req_products_name,
                        'products_description' => addslashes($req_products_description)
                    ]);
            }
            //  delete categories
            DB::table('products_to_categories')->where([
                'products_id' => $products_id,
            ])->delete();
            //  insert categories
            DB::table('products_to_categories')->insert([
                'products_id' => $products_id,
                'categories_id' => $request->category_id
            ]);

            $products_attributes_id = DB::table('products_attributes')->where('products_id', '=', $products_id)
            ->update([
                'options_id' => $request->products_options_id,
                'options_values_id' => $request->products_options_values_id,
            ]);

            // if ($request->product_image) {
            //     $images = $request->product_image;
            //     if(!array_filter($images) == []){
            //         $x = 1;
            //         foreach ($images as  $key => $value) {
            //             $image = substr($value['image'], strpos($value['image'], ",") + 1);
            //             $img = base64_decode($image);
            //             $dir="images/products/seller/images";
            //             if (!file_exists($dir) and !is_dir($dir)) {
            //                 mkdir($dir);
            //             }
            //             $uploadfile = $dir."/product_".Str::random(60).".jpg";
            //             file_put_contents(base_path().'/'.$uploadfile, $img);
            //             $product_images = $uploadfile;
            //             $insertImage = DB::table('products_images')
            //                 ->insert([
            //                     'image' => $product_images,
            //                     'products_id' => $products_id,
            //                     'sort_order' => $x
            //                 ]);
            //             $x++;
            //         }
            //     }
            // }

            $responseData = array('status' => '1', 'data' => array(), 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        return $categoryResponse;
    }

    public static function addproductimage($request){
        $validator = validator()->make($request->all(), [
            'products_id' => 'required',
            'product_image' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $setting = new Setting();
            $myVarsetting = new SiteSettingController($setting);
            $myVaralter = new AlertController($setting);
            $language_id      =   $request->language_id;
            $products_id      =   $request->products_id;
            $products_last_modified	= date('Y-m-d h:i:s');
            $languages = $myVarsetting->getLanguages();

            $getImage = DB::table('products_images')->where('products_id', '=', $products_id)->count();

            $x = $getImage + 1;

            if ($request->product_image) {
                $image = substr($request->product_image, strpos($request->product_image, ",") + 1);
                $img = base64_decode($image);
                $dir="images/products/seller/images";
                if (!file_exists($dir) and !is_dir($dir)) {
                    mkdir($dir);
                }
                $uploadfile = $dir."/product_".Str::random(60).".jpg";
                file_put_contents(base_path().'/'.$uploadfile, $img);
                $product_images=$uploadfile;
                $insertImage = DB::table('products_images')
                    ->insert([
                        'image' => $product_images,
                        'products_id' => $products_id,
                        'sort_order' => $x,
                        'type' => 2
                    ]);
            }

            $responseData = array('status' => '1', 'data' => array(), 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        return $categoryResponse;
    }

    public static function deleteproductimage($request){
        $validator = validator()->make($request->all(), [
            'product_id' => 'required',
            'image_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $setting = new Setting();
            $myVarsetting = new SiteSettingController($setting);
            $myVaralter = new AlertController($setting);
            $language_id      =   $request->language_id;
            $products_id      =   $request->product_id;
            $image_id         =   $request->image_id;
            $products_last_modified	= date('Y-m-d h:i:s');
            $languages = $myVarsetting->getLanguages();

            $getImage = DB::table('products_images')->where('products_id', '=', $products_id)->where('id', '=', $image_id)->first();
            // dd(public_path($getImage->image));
            $myFile = public_path($getImage->image);
            File::delete($myFile);

            $getImage = DB::table('products_images')
                ->where('products_id', '=', $products_id)
                ->where('id', '=', $image_id)
                ->delete();

            
            
            $responseData = array('status' => '1', 'data' => array(), 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        return $categoryResponse;
    }

    public static function deleteproduct($request){
        $validator = validator()->make($request->all(), [
            'user_id' => 'required',
            'products_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;
        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {
            $setting = new Setting();
            $myVarsetting = new SiteSettingController($setting);
            $myVaralter = new AlertController($setting);
            $language_id      =   $request->language_id;
            $products_id      =   $request->products_id;
            $products_last_modified	= date('Y-m-d h:i:s');
            $languages = $myVarsetting->getLanguages();
            
            $getImage = DB::table('products')->where('products_id', '=', $products_id)->first();

            $myFile = public_path($getImage->products_image);
            File::delete($myFile);

            $myFiles = public_path($getImage->invoice_image);
            File::delete($myFiles);

            $getImages = DB::table('products_images')->where('products_id', $products_id)->get();

            foreach($getImages as $img){
                $myFiles = public_path($img->image);
                File::delete($myFiles);
            }

            $categories = DB::table('products_to_categories')->where('products_id', $products_id)->delete();
            $categories = DB::table('products')->where('products_id', $products_id)->delete();
            $categories = DB::table('products_images')->where('products_id', $products_id)->delete();
            $categories = DB::table('products_description')->where('products_id', $products_id)->delete();
            $categories = DB::table('products_attributes')->where('products_id', $products_id)->delete();
            $categories = DB::table('flash_sale')->where('products_id', $products_id)->delete();

            $responseData = array('status' => '1', 'data' => array(), 'message' => trans('labels.Success'));
        } else {
            $responseData = array('status' => '0', 'data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);
        return $categoryResponse;
    }

    public static function myWishList($request)
    {
        $validator = validator()->make($request->all(), [
            'customers_id' => 'required',
            'language_id' => 'required'
        ]);

        if ($validator->fails()) {

            $response = [
                'status' => 0,
                'message' => $validator->errors()->first(),
                'data' => []
            ];
            $error = json_encode($response);
            return $error;
        }

        $language_id = $request->language_id;
        $currentDate = time();

        $consumer_data = array();
        $consumer_data['consumer_key'] = request()->header('consumer-key');
        $consumer_data['consumer_secret'] = request()->header('consumer-secret');
        $consumer_data['consumer_nonce'] = request()->header('consumer-nonce');
        $consumer_data['consumer_device_id'] = request()->header('consumer-device-id');
        $consumer_data['consumer_ip'] = request()->header('consumer-ip');
        $consumer_data['consumer_url'] = __FUNCTION__;

        $authController = new AppSettingController();
        $authenticate = $authController->apiAuthenticate($consumer_data);

        if ($authenticate == 1) {

            $sortby = "products.products_id";
            $order = "desc";

            $filterProducts = array();
            $eliminateRecord = array();
            
            $categories = DB::table('products')
                ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
                ->leftJoin('liked_products', 'liked_products.liked_products_id', '=', 'products.products_id')
                ->select('products.products_id', 'products_name', 'products_image', 'products_price', 'purchase_type')
                ->where('products_description.language_id', '=', $language_id)
                ->where('products.products_status', '=', '1')
                ->where('liked_customers_id', '=', $request->customers_id)
                ->orderBy($sortby, $order);

            //count
            $data = $categories->get();

            if (count($data) > 0) {
                $responseData = array('status' => '1', 'data' => $data, 'message' => trans('labels.Returned all products.'));
            } else {
                $responseData = array('status' => '1', 'data' => $data, 'message' => trans('labels.Empty record.'));
            }
            
        } else {
            $responseData = array('status' => '0', 'product_data' => array(), 'message' => "Unauthenticated call.");
        }
        $categoryResponse = json_encode($responseData);

        return $categoryResponse;
    }


}
