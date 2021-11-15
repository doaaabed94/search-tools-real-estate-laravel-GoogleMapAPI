<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\ProjectNumberOfRooms;
use App\Models\Region;
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
            'project_type' => 'nullable|in:resident,hotel',
            'contact_person_name' => 'nullable|string',
            'contact_person_phone' => 'nullable|string',
            'number_of_rooms_id' => 'nullable|exists:number_of_rooms,id',
            'price_from' => 'nullable|integer',
            'price_to' => 'nullable|integer',
            'area_from' => 'nullable|integer',
            'area_to' => 'nullable|integer',
            'payment' => 'nullable|in:cash,cash_install'
        ]);

        $name = isset($search['name']) ? $search['name'] : null;
        $region_ids = isset($search['region_ids']) ? $search['region_ids'] : null;
        $project_type = isset($search['project_type']) ? $search['project_type'] : null;
        $contact_person_name = isset($search['contact_person_name']) ? $search['contact_person_name'] : null;
        $contact_person_phone = isset($search['contact_person_phone']) ? $search['contact_person_phone'] : null;
        $number_of_rooms_id = isset($search['number_of_rooms_id']) ? $search['number_of_rooms_id'] : null;
        $price_from = isset($search['price_from']) ? $search['price_from'] : null;
        $price_to = isset($search['price_to']) ? $search['price_to'] : null;
        $area_from = isset($search['area_from']) ? $search['area_from'] : null;
        $area_to = isset($search['area_to']) ? $search['area_to'] : null;
        $payment = isset($search['payment']) ? $search['payment'] : null;

        $query = ProjectNumberOfRooms::select();


        if($name){
            $query->whereHas('project' , function ($q) use ($name) {
                $q->where('name','like', '%'.$name.'%');
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

        if($payment){
            $query->whereHas('project' , function ($q) use ($payment) {
                $q->where('payment','=', $payment);
            });
        }


        if($contact_person_name){
            $query->whereHas('project' , function ($q) use ($contact_person_name) {
                $q->where('contact_person_name','=', $contact_person_name);
            });
        }

        if($contact_person_phone){
            $query->whereHas('project' , function ($q) use ($contact_person_phone) {
                $q->where('contact_person_phone','=', $contact_person_phone);
            });
        }

        if($number_of_rooms_id){
            $query->where('number_of_rooms_id', $number_of_rooms_id);
        }

        if ($area_from && $area_from > 0 && $area_to && $area_to > 0){
            $query->where(function ($q) use ($area_from, $area_to){
                $q->orWhere(function($sq) use($area_from, $area_to){
                    $sq->where('area_from', '>=', $area_from)
                        ->where('area_to', '<=', $area_to);
                })->orWhere(function($sq) use ($area_from, $area_to){
                    $sq->where('area_from', '>=', $area_from)
                        ->where('area_from', '<=', $area_to);
                })->orWhere(function($sq) use ($area_from, $area_to){
                    $sq->where('area_to', '>=', $area_from)
                        ->where('area_to', '<=', $area_to);
                });
            });
            
        } else{
            if($area_from && $area_from > 0){
                $query->where('area_from', '>=', $area_from);
            }
    
            if($area_to && $area_to > 0){
                $query->where('area_to', '<=', $area_to);
            }
        }

        if($price_from && $price_from > 0 && $price_to && $price_to > 0){
            $query->where(function ($q) use ($price_from, $price_to){
                $q->orWhere(function($sq) use($price_from, $price_to){
                    $sq->where('price_from', '>=', $price_from)
                        ->where('price_from', '<=', $price_to)
                        ->where('price_to', '>=', $price_from)
                        ->where('price_to', '<=', $price_to);
                })->orWhere(function($sq) use ($price_from, $price_to){
                    $sq->where('price_from', '>=', $price_from)
                        ->where('price_from', '<=', $price_to);
                })->orWhere(function($sq) use ($price_from, $price_to){
                    $sq->where('price_to', '>=', $price_from)
                        ->where('price_to', '<=', $price_to);
                });
            });
        }
        else{
            if($price_from && $price_from > 0){
                $query->where('price_from', '>=', $price_from);
            }
    
            if($price_to && $price_to > 0){
                $query->where(function ($q) use ($price_from, $price_to){
                    $q->orWhere(function($sq) use($price_to){
                        $sq->where('price_to', '<=', $price_to)
                            ->where('price_from', '<=', $price_to);
                    })->orWhere(function($sq) use ($price_to){
                        $sq->where('price_from', '<=', $price_to)
                            ->where('price_to', '>=', $price_to);
                    })->orWhere(function($sq) use ($price_to){
                        $sq->where('price_from', '<=', $price_to)
                            ->where('price_to', '=', 0);
                    });
                });
            }

        }

        
        

        $results = $query->get();

        $data['results'] = $this->paginate($results->groupBy('project_id'),20);

        $data['regions'] = Region::select('id', 'name', 'city_id')
        ->get();

        $data['region_ids'] = $region_ids;

        $data['number_of_rooms'] = NumberOfRoom::select('id', 'name')
        ->orderBy('id','ASC')
        ->get();

        return view('index')->with($data);
    }

    public function paginate($items, $perPage = 5, $page = null, $options = [])
    {
        $page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
        $items = $items instanceof Collection ? $items : Collection::make($items);
        return new LengthAwarePaginator($items->forPage($page, $perPage), $items->count(), $perPage, $page, $options);
    }
}
