<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;

class ProfileController extends Controller
{
    public function edit()
    {
        $id = auth()->guard('admin')->user()->id;
        $data['row'] = User::where('id', $id)->first();

        return view('profile.edit')->with($data);
    }

    public function update(Request $request)
    {
        $data = $request->validate([
            'name'      => 'required|string|max:50',
            'email'     => 'required|email|max:200',
            'password'  => 'nullable|string|max:50',
        ]);

        $id = auth()->guard('admin')->user()->id;
        $ad = User::findOrFail($id);

        if($request->password !== null)
        {
            $data['password'] = bcrypt($request->password);
        } else 
        {
            $data['password'] = $ad->password;
        }

    	User::where('id', $id)->update($data);
    	$msg['success'] = trans('admin.msg.EditedSuccess');
        return response()->json($msg);
    }
}
