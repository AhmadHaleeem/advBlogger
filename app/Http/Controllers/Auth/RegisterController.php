<?php

namespace App\Http\Controllers\Auth;
use Sentinel;
use Mail;
use App\Mail\Activation as UserActivation;
use Activation;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
class RegisterController extends Controller
{
    public function getRegister() {
        return view('auth.register');
    }

    public function postRegister() {
    request()->validate([
       'email'          => 'required|unique:users,email|email',
       'username'       => 'required|min:5|max:18|alpha_dash|unique:users,username',
       'first_name'      => 'required|min:3|max:18|alpha',
       'last_name'       => 'required|min:3|max:18|alpha',
        'location'      => [
            'regex:/^[a-zA-Z0-9-_. ]*$/', 'required', 'min:3' , "max:20"
        ],
        'password'      => 'required|string|min:6|max:32|confirmed',
        'dob'           => 'required|date|before_or_equal:2000-01-01|date_format:Y-m-d'
    ]);

    $user = Sentinel::register([            // I can also use registerAndActivate instead (true Value)
       'email'        => request()->email,
       'username'     => request()->username,
       'first_name'    => request()->first_name,
       'last_name'     => request()->last_name,
       'location'     => request()->location,
       'password'     => request()->password,
       'dob'          => request()->dob,

    ]);
    $user = Sentinel::findById($user->id);
    $activation = Activation::create($user);

    Mail::to($user)->send(new UserActivation($user, $activation)); // this is replaced with UserActivations

    // this is to give the user some permissions and store its in the (roles_users table)
        $role = Sentinel::findRoleBySlug('user');
        $role->users()->attach($user);

    return redirect()->route('login')->with('success', 'You Have been registered successfully');
    }
}
