<?php

namespace App\Http\Middleware;

use Closure;

class AuthWeb
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string
     */
    public function handle($request, Closure $next)
    {
        if (auth()->guard('customer')->check()) {
            return $next($request);
        } else {
            return url('/');
        }
        return $next($request);
    }
}
