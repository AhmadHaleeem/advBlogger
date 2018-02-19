<?php

namespace App\Http\Controllers\Auth;
use Sentinel;
use Activation;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EmailActivationController extends Controller
{
    public function activateUser($email, $token) {
        if ($user = User::whereEmail($email)->first()) {
            $user = Sentinel::findById($user->id);
            if (Activation::exists($user)) {
                if (Activation::complete($user, $token)) {
                    Activation::removeExpired(); // this to truncate the token
                    if (Sentinel::login($user, true)) {
                        return redirect()->home()->with('success', 'Logged in Successfully');
                    }
                }
            } else {
                return redirect()->route('login')->with('error', 'Invalid Token');
            }
        } else {
            return redirect()->route('login')->with('error', 'Invalid Email');
        }
    }
}
