<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\ProjectNumberOfRooms;
use App\Models\Region;
use App\Models\Instalment;
use App\Models\Category;
use App\Models\NumberOfRoom;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Collection;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Log;

class HomeController extends Controller
{   


    public function index(Request $request)
    {   
        $search = $request->validate([
            'name' => 'nullable|string',
            'region_ids' => 'nullable|string',
            'project_type' => 'nullable|in:resident,hotel,invest_resident,invest',
            'number_of_rooms_id' => 'nullable',
            'instalment_id_fk' => 'nullable',
            'category_id_fk' => 'nullable',
        ]);

        $name = isset($search['name']) ? $search['name'] : null;
        $region_ids = isset($search['region_ids']) ? $search['region_ids'] : null;
        $project_type = isset($search['project_type']) ? $search['project_type'] : null;
        $number_of_rooms_id = isset($search['number_of_rooms_id']) ? $search['number_of_rooms_id'] : null;
        $instalment_id_fk = isset($search['instalment_id_fk']) ? $search['instalment_id_fk'] : null;
        $category_id_fk = isset($search['category_id_fk']) ? $search['category_id_fk'] : null;
        
        $query = ProjectNumberOfRooms::select();

        if($name){
            $query->whereHas('project' , function ($q) use ($name) {
                $q->where('name','like', '%'.$name.'%');
            });
        }

         if($category_id_fk){
            $query->whereHas('project' , function ($q) use ($category_id_fk) {
                $q->where('category_id_fk','like', '%'.$category_id_fk.'%');
            });
        }

         if($instalment_id_fk){
            $query->whereHas('project' , function ($q) use ($instalment_id_fk) {
                $q->where('instalment_id_fk','like', '%'.$instalment_id_fk.'%');
            });
        }

        if ($region_ids) 
        {   
            $region_ids = explode(",", $region_ids);
            $query->whereHas('project' , function ($q) use ($region_ids) {
                $q->whereIn('region_id', $region_ids);
            });
        }

        if($project_type){
            $query->whereHas('project' , function ($q) use ($project_type) {
                $q->where('project_type','=', $project_type);
            });
        }

        if($number_of_rooms_id){
            $query->where('number_of_rooms_id', $number_of_rooms_id);
        }

        $results = $query->orderBy('id','desc')->get();
        $data['results'] = $this->paginate($results->groupBy('project_id'),30);

        $data['regions'] = Region::select('id', 'name', 'city_id')->get();
        $data['instalment'] = Instalment::get();
        $data['category'] = Category::get();
        $data['region_ids'] = $region_ids;

        $data['category_id_fk'] = $category_id_fk;
        $data['instalment_id_fk'] = $instalment_id_fk;

        $data['number_of_rooms'] = NumberOfRoom::select('id', 'name')->orderBy('id','desc')->get();

  return view('index')->with($data);
    }

    public function paginate($items, $perPage = 5, $page = null, $options = [])
    {
        $page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
        $items = $items instanceof Collection ? $items : Collection::make($items);
        return new LengthAwarePaginator($items->forPage($page, $perPage), $items->count(), $perPage, $page, $options);
    }
}
