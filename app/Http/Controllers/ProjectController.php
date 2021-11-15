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

class ProjectController extends Controller
{

    use UploadTrait;

    public function index()
    {
        $data['rows'] = Project::where('display_website',1)->orderBy('updated_at','DESC')
        ->get();
        $data['instalment'] = Instalment::get();
        $data['category'] = Category::get();
        return view('project.index')->with($data);
    }
    
    public function get_detials($id)
    {
        $data['row'] = Project::findOrFail($id);
        $data['array'] = ProjectNumberOfRooms::where('project_id', $id)->get();

        $data['regions'] = Region::select('id', 'name', 'city_id')
        ->get();

        $data['number_of_rooms'] = NumberOfRoom::select('id', 'name')
        ->orderBy('id','ASC')
        ->get();
                $data['instalment'] = Instalment::get();
        $data['category'] = Category::get();

        $data['images'] = ProjectImg::where('project_id',$id)->orderBy('order_number','ASC')->get();

        return view('frontend.index')->with($data);
    }


public function downloadImage($project_id){
   $portfolioImages =  ProjectImg::where('project_id', $project_id)->get();
    $files = [];
    foreach ($portfolioImages as $i => $portfolioImage) {
        $files[$portfolioImage->id] = public_path(). '/uploads/project/'. $portfolioImage->img;
    }
    $Project_name  = Project::find($project_id);
    $zip        = new ZipArchive;
    $zipFile    = public_path().'/uploads/project/'.$Project_name->name.'.zip';

    if ($zip->open($zipFile, ZipArchive::CREATE) === TRUE)
        {  
        //add files into a zip
        foreach ($files as $key => $value) {
            //replace word "full" with $portfolioImage->id
            $relativeNameInZipFile = str_replace('full',$key,basename($value));
            $zip->addFile($value, $relativeNameInZipFile);
        }
        $zip->close();
    }
    return response()->download($zipFile);
}

    public function create()
    {
        $data['regions'] = Region::select('id', 'name', 'city_id')->get();

        $data['number_of_rooms'] = NumberOfRoom::select('id', 'name')->orderBy('id','ASC')->get();
        
        $data['instalment'] = Instalment::get();
        
        $data['category'] = Category::get();
        
        return view('project.add')->with($data);
    }


    // storing data in db 
    public function store(Request $request)
    {   
        try {
        $data = $request->all();

        if(isset($data['img']))
        {   
            $img = $data['img'];
            unset($data['img']);
        }

        if(isset($data['video']))
        {   
            $video = $data['video'];
            unset($data['video']);
        }
        $items = json_decode($request->number_of_rooms);
        unset($data['number_of_rooms']);



        if($request->hasFile('image_whatsapp')){
    $image_whatsapp=$request->file('image_whatsapp');
            $name = time();
            $folder = '/project/';
            $filePath = $name. '.' . $image_whatsapp->getClientOriginalExtension();
            $this->uploadOne($image_whatsapp, $folder, 'public_uploads', $name);
             $data['image_whatsapp'] = $filePath;
        }


        $project = Project::create($data); 

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

        if($request->hasFile('img')){
            foreach($request->file('img') as $key => $image) {
            $name = $key.time();
            $folder = '/project/';
            $filePath = $folder . $name. '.' . $image->getClientOriginalExtension();
            $img=$this->uploadOne($image, $folder, 'public_uploads', $name);
            ProjectImg::create(['lang_id' => 1, 'project_id' => $project->id, 'img' => $img]);
        }
        }


           if($request->hasFile('video')){
            foreach($request->file('video') as $key => $video) {
            $name = $key.time();
            $folder = '/projectVideo/';
            $filePath = $folder . $name. '.' . $video->getClientOriginalExtension();
            $video=$this->uploadOne($video, $folder, 'public_uploads', $name);
            ProjectVideo::create(['lang_id' => 1, 'project_id' => $project->id, 'video' => $video]);
        }
        }
           Session::flash('message', "تمت الإضافة بنجاح ! ");
        return Redirect::back();

        } catch (Exception $e) {
           Session::flash('message-danger', "حدث خطأ ! ");
        return Redirect::back();
            
        }
}
    


    public function edit($id)
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

        return view('project.edit')->with($data);
    }

    // storing data in db 
    public function update(Request $request)
    {   
      
        $data = $request->all();
        $id = $request->id;
        unset($data['_token']);

           if($request->hasFile('image_whatsapp')){
    $image_whatsapp=$request->file('image_whatsapp');
            $name = time();
            $folder = '/project/';
            $filePath = $name. '.' . $image_whatsapp->getClientOriginalExtension();
            $this->uploadOne($image_whatsapp, $folder, 'public_uploads', $name);
             $data['image_whatsapp'] = $filePath;
        }

         //   delete image if has 
        if($request->input('deleteimg'))
        {
          foreach($request->input('deleteimg') as $key => $delete_id_img){
            ProjectImg::where('id', $delete_id_img)->delete();
          }
        }

           //   delete image if has 
        if($request->input('deletevideo'))
        {
          foreach($request->input('deletevideo') as $key => $deletevideo){
            ProjectVideo::where('id', $deletevideo)->delete();
          }
        }

        unset($data['deletevideo']);
        unset($data['deleteimg']);
        
        if($request->hasFile('video')){
            foreach($request->file('video') as $key => $video) {
            $name = $key.time();
            $folder = '/projectVideo/';
            $filePath = $folder . $name. '.' . $video->getClientOriginalExtension();
            $video=$this->uploadOne($video, $folder, 'public_uploads', $name);
            ProjectVideo::create(['lang_id' => 1, 'project_id' => $id, 'video' => $video]);
        }
        }



        //   upload image of this module
        if($request->hasfile('image_pro'))
        {   


            foreach($request->file('image_pro') as $key => $image)
           {
            $name = $key.time();
            $folder = '/project/';
            $filePath = $folder . $name. '.' . $image->getClientOriginalExtension();
            $img=$this->uploadOne($image, $folder, 'public_uploads', $name);
            ProjectImg::create(['lang_id' => 1, 'project_id' => $id, 'img' => $img]);

            }
        }
        unset($data['image_pro']);
        unset($data['video']);

         //   upload image of this module
        if($request->input('order-image-old'))
        {  
            foreach($request->input('order-image-old') as $key => $req)
           {    
                ProjectImg::where('id', $req)->update(['order_number'=>$request->input('order-n')[$key]]);              
           }
        }

        unset($data['order-image-old']);
        unset($data['order-n']);


        $items = json_decode($request->number_of_rooms);
        $to_edit_flats = json_decode($request->to_edit_flats);
        $to_delete = explode(',', $request->number_of_rooms_deleted);
        
        
        for($i=0;$i<count($to_delete);$i++){
            ProjectNumberOfRooms::select()->where('id',$to_delete[$i])->delete();
        }
        
        unset($data['number_of_rooms']);
        unset($data['number_of_rooms_deleted']);
        unset($data['to_edit_flats']);
        unset($data['named']);


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
                    ProjectNumberOfRooms::where('id', $item[0][1])->update([
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