<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\ProjectRequest;
use App\Models\Project;
use App\Models\Region;
use App\Models\NumberOfRoom;
use App\Models\ProjectNumberOfRooms;

use Illuminate\Support\Facades\Log;


class PropOnMapController extends Controller
{
    public function index()
    {
       
        return view('map.index');
    }
    
    public function create()
    {
        $data['regions'] = Region::select('id', 'name', 'city_id')
        ->get();

        $data['number_of_rooms'] = NumberOfRoom::select('id', 'name')
        ->orderBy('id','ASC')
        ->get();

        return view('project.add')->with($data);
    }

    // storing data in db 
    public function store(ProjectRequest $request)
    {
        $data = $request->validated();

        $items = json_decode($request->number_of_rooms);
        unset($data['number_of_rooms']);
        $project = Project::create($data); // inserting data
        
        foreach($items as $item){
            if($item[0][1] !== ''){
                try {
                    ProjectNumberOfRooms::create([
                        'project_id' =>  $project->id,
                        $item[0][0]=> (int)$item[0][1],
                        $item[1][0]=> (int)$item[1][1],
                        $item[2][0]=> (int)$item[2][1],
                        $item[3][0]=> (int)$item[3][1],
                        $item[4][0]=> (int)$item[4][1],
                        $item[5][0]=> (int)$item[5][1],
                        $item[6][0]=> (int)$item[6][1]
        
                    ]);
                }
                catch (\Illuminate\Database\QueryException $e) {
                }
            }
            
        }

        $msg['success'] = trans('admin.addedSuccess');
        return response()->json($msg);
    }

    public function edit($id)
    {
        $data['row'] = Project::findOrFail($id);

        $data['regions'] = Region::select('id', 'name', 'city_id')
        ->get();

        $data['number_of_rooms'] = NumberOfRoom::select('id', 'name')
        ->orderBy('id','ASC')
        ->get();

        return view('project.edit')->with($data);
    }

    // storing data in db 
    public function update(ProjectRequest $request)
    {

        $data = $request->validated();
        $id = $request->id;

        $items = json_decode($request->number_of_rooms);
        $to_edit_flats = json_decode($request->to_edit_flats);
        $to_delete = explode(',', $request->number_of_rooms_deleted);
        
        
        for($i=0;$i<count($to_delete);$i++){
            ProjectNumberOfRooms::select()->where('id',$to_delete[$i])->delete();
        }
        
        unset($data['number_of_rooms']);
        unset($data['number_of_rooms_deleted']);
        // updating data in db
        Project::where('id', $request->id)->update($data);
        
        foreach($items as $item){
            if($item[0][1] !== ''){
                try {
                    ProjectNumberOfRooms::create([
                        'project_id' =>  $id,
                        $item[0][0]=> (int)$item[0][1],
                        $item[1][0]=> (int)$item[1][1],
                        $item[2][0]=> (int)$item[2][1],
                        $item[3][0]=> (int)$item[3][1],
                        $item[4][0]=> (int)$item[4][1],
                        $item[5][0]=> (int)$item[5][1],
                        $item[6][0]=> (int)$item[6][1]
        
                    ]);
                }
                catch (\Illuminate\Database\QueryException $e) {
                }
            }
        
        }

        foreach($to_edit_flats as $item){
            if($item[0][1] !== ''){
                try {
                    ProjectNumberOfRooms::where('id', (int)$item[0][1])->update([
                        $item[1][0]=> (int)$item[1][1],
                        $item[2][0]=> (int)$item[2][1],
                        $item[3][0]=> (int)$item[3][1],
                        $item[4][0]=> (int)$item[4][1],
                        $item[5][0]=> (int)$item[5][1],
                        $item[6][0]=> (int)$item[6][1]
        
                    ]);
                }
                catch (\Illuminate\Database\QueryException $e) {
                }
            }
        
        }


        $msg['success'] = trans('admin.msg.EditedSuccess');
        return response()->json($msg);

    }

    // deleteing row from db  ( soft delete )
    public function delete($id)
    {

        ProjectNumberOfRooms::select()->where('project_id',$id)->delete();

        Project::findOrFail($id)->delete();
    	$msg['success'] = trans('admin.msg.deleted_success');
        return response()->json($msg);

    }
}