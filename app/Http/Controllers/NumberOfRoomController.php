<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\NumberOfRoomRequest;
use App\Models\NumberOfRoom;

class NumberOfRoomController extends Controller
{

    public function index()
    {
        $data['rows'] = NumberOfRoom::orderBy('id','ASC')
        ->paginate(25);

        return view('numberOfRooms.index')->with($data);
    }


    // storing data in db 
    public function store(NumberOfRoomRequest $request)
    {
        $data = $request->validated();

        NumberOfRoom::create($data); // inserting data 
        $msg['success'] = trans('admin.addedSuccess');
        return response()->json($msg);
    }



     // storing data in db 
    public function update(NumberOfRoomRequest $request)
    {
        $data = $request->validated();

        // updating data in db
    	NumberOfRoom::where('id', $request->id)->update($data);
    	$msg['success'] = trans('admin.msg.EditedSuccess');
        return response()->json($msg);
    }


    // deleteing row from db  ( soft delete )
    public function delete($id)
    {   
        NumberOfRoom::findOrFail($id)->delete();
    	$msg['success'] = trans('admin.msg.deleted_success');
        return response()->json($msg);

    }


}
