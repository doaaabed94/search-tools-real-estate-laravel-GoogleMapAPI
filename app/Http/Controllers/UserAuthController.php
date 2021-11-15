<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UserAuthController extends Controller
{
    // show login blade 
    public function login()
    {
        return view('auth.login');
    }



    // login authencation 
    public function do_login(Request $request)
    {

        $request->validate([
            'email'=>'required|email|max:30',
            'password'=>'required|max:30',
        ]);
        $remember = request()->has('remember') ? true: false;
        if(\Auth::guard('admin')->attempt(['email'=>request('email'),'password'=>request('password')],$remember))
        {
            return redirect(route('get.home.index'));
        }
        else
        {
            return back()->withErrors(trans('admin.msg.notCorrect'));
        }
    }
       
    
    // admin logout 
    public function logout()
    {
        adminAuth()->logout();
        return redirect(route('get.userAuth.login'));
    }
}
