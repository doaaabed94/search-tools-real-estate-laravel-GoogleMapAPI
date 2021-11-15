<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\ProjectRequest;
use App\Models\Project;
use App\Models\Region;
use App\Models\NumberOfRoom;
use App\Models\ProjectNumberOfRooms;
use App\Models\ProjectImg;
use App\Models\Instalment;
use App\Models\Category;
use App\Models\ProjectVideo;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Session;
use App\Traits\UploadTrait;
use Redirect;
use ZipArchive;

class testController extends Controller
{

    use UploadTrait;

 
    public function edit_23($id)
    {   


        $data['row'] = Project::findOrFail($id);

        $data['regions'] = Region::select('id', 'name', 'city_id')
        ->get();

        $data['number_of_rooms'] = NumberOfRoom::select('id', 'name')
        ->orderBy('id','ASC')
        ->get();
                $data['instalment'] = Instalment::get();
        $data['category'] = Category::get();

        $data['images'] = ProjectImg::where('project_id',$id)->orderBy('order_number','ASC')->get();

        return view('project.edit_23')->with($data);
    }

     public function update_23(Request $request)
    { 


    }
}