<?php

namespace App\Http\Middleware;

use Sentinel;
use Closure;


class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (Sentinel::check() && Sentinel::hasAnyAccess(['admin.*', 'moderator.*'])) {
            return redirect()->route('admin.dashboard')->with('info', 'You are already logged in');
        } elseif (Sentinel::check() && Sentinel::hasAccess('user.*')) {
            return redirect()->home()->with('info', 'You are already logged in');
        }
        return $next($request);
    }
}
