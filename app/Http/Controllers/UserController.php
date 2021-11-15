<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\Models\User;

class UserController extends Controller
{
    public function index()
    {
        $data['rows'] = User::paginate(25);
        
        return view('user.index')->with($data);
    }


    // storing data in db 
    public function store(UserRequest $request)
    {
        $data = $request->validated();
        $data['password'] = bcrypt($data['password']);
        
        User::create($data); // inserting data 
        $msg['success'] = trans('admin.msg.addedSuccess');
        return response()->json($msg);
    
    }




     // storing data in db 
    public function update(UserRequest $request)
    {
        $data = $request->validated();
        $old = User::findOrFail($request->id);

        if($data['password'] !== null)
        {
            $data['password'] = bcrypt($data['password']);
        } else 
        {
            $data['password'] = $old->password;
        }


    	// updating data in db
    	User::where('id', $request->id)->update($data);
    	$msg['success'] = trans('admin.msg.EditedSuccess');
        return response()->json($msg);
    }






     // deleteing row from db  ( soft delete )
    public function delete($id)
    {         
        User::findOrFail($id)->delete();
    	$message['status'] = true;
        return response()->json($message);
    }

}
