<?php

namespace App\Http\Middleware\category;

use Closure;
use DB;
use Auth;

class add_category
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
      $check =  DB::table('manage_role')
                 ->where('user_types_id',Auth()->user()->role_id)
                 ->where('category_create',1)
                 ->first();
        if($check == null){
          return  redirect('not_allowed');
        }else{
          return $next($request);
        }
    }
}
