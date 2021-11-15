<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\RegionRequest;
use App\Models\Region;

use App\Models\City;

class RegionController extends Controller
{

    public function index()
    {
        $data['rows'] = Region::orderBy('id','DESC')
        ->paginate(25);

        $data['cities'] = City::select('id','name')
        ->get();

        return view('region.index')->with($data);
    }



    // storing data in db 
    public function store(RegionRequest $request)
    {
        $data = $request->validated();

        $region = Region::create($data); // inserting data 
        $msg['success'] = trans('admin.addedSuccess');
        return response()->json($msg);
    }


     // storing data in db 
    public function update(RegionRequest $request)
    {
        $data = $request->validated();

        
        // updating data in db
    	Region::where('id', $request->id)->update($data);
    	$msg['success'] = trans('admin.msg.EditedSuccess');
        return response()->json($msg);
    }


    // deleteing row from db  ( soft delete )
    public function delete($id)
    {
        
        Region::findOrFail($id)->delete();
    	$msg['success'] = trans('admin.msg.deleted_success');
        return response()->json($msg);
    }



}
