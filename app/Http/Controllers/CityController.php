<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\CityRequest;
use App\Models\City;

// use App\Helpers\Classes\UploadClass;
// use Illuminate\Support\Facades\Storage;

class CityController extends Controller
{

    public function index()
    {
        $data['rows'] = City::orderBy('id','DESC')
        ->paginate(25);

        return view('city.index')->with($data);
    }


    // storing data in db 
    public function store(CityRequest $request)
    {
        $data = $request->validated();

        City::create($data); // inserting data 
        $msg['success'] = trans('admin.addedSuccess');
        return response()->json($msg);
    }



     // storing data in db 
    public function update(CityRequest $request)
    {
        $data = $request->validated();

        // updating data in db
    	City::where('id', $request->id)->update($data);
    	$msg['success'] = trans('admin.msg.EditedSuccess');
        return response()->json($msg);
    }


    // deleteing row from db  ( soft delete )
    public function delete($id)
    {   
        City::findOrFail($id)->delete();
    	$msg['success'] = trans('admin.msg.deleted_success');
        return response()->json($msg);

    }


}
