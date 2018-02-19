<?php

namespace App\Http\Controllers\Auth;
use Sentinel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LoginController extends Controller
{
    public function getLogin() {
        return view('auth.login');
    }

    public function postLogin() {
//        request()->validate([
//           'email'      => 'required|email',
//            'password'  => 'required|min:6|max:32|string'
//        ]);
        request()->validate([
           'email'  => new \App\Rules\usernameOrEmail,
            'password' => 'required|string|min:6|max:32'
        ]);
        // authenticate (credentials, remember_me)
        // forceAuthenticate (credentials, remember)
        // authenticateAndRemember (credentials)


        // this is the first way to login
//        $user = Sentinel::forceAuthenticate([
//           'login'  => request()->email,
//           'password'  => request()->password,
//        ]);


        // this is the second wat to login
        $user = \App\User::whereUsernameOrEmail(request('email'), request('email'))->first();
        $user = Sentinel::findById($user->id);
        $user = Sentinel::login($user);
        if ($user->hasAnyAccess(['admin.*', 'moderator.*'])) {
            return redirect()->route('admin.dashboard')->with('success', 'Welcome to the admin dashboard');
        } elseif ($user->hasAccess('user.*')) {
            return redirect()->home()->with('success', 'Logged in Successfully');
        }

        return redirect()->back()->with('error', 'Invalid Credentials');
    }

    public function logout() {
        // it has tow parameters the first one is
        // null : this is to logout the user
        // and the second one is true : to destroy the current users sessions
        Sentinel::logout(null, true);
        return redirect()->route('login')->with('success', 'Come back again whenever you can');
    }
}
