<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Project;
use App\Models\Region;
use App\Models\NumberOfRoom;
use App\Models\ProjectNumberOfRooms;
use App\Models\City;

use Illuminate\Support\Facades\Log;

class MaxMinPriceInRegion extends Controller
{
    public function index()
    {
        $data['regions'] = Region::select('id', 'name', 'city_id')
        ->paginate(100);
        
        $data['cities'] = City::select('id','name')
        ->get();
        
        $projects = Project::select('id','region_id')->where('display_website',1)->get();
        
        $project_number_of_rooms = ProjectNumberOfRooms::select('id', 'project_id','area_from','price_from')
        ->get();
        
        $all_projects_max_min_price_array = array();
        foreach($projects as $pro)
        {
            $arrayfrom = array();
            foreach($project_number_of_rooms as $val)
            {
                if($pro->id == $val->project_id)
                {
                    
                    if($val->price_from !== null && $val->area_from !== null && $val->price_from > 0 && $val->area_from > 0)
                    {
                        $x = round($val->price_from/$val->area_from);
                        $arrayfrom[] = intval($x);
                    }
                }
            }
            $max = 0;
            $min = 0;
            if(count($arrayfrom) > 0)
            {
                $max = max($arrayfrom);
                $min = min($arrayfrom);
            }
            $result = array('project_id' => $pro->id,
                            'region_id'  => $pro->region_id,
                            'max_price'  => $max,
                            'min_price'  => $min);
            $all_projects_max_min_price_array[] = $result;
        }
        
        // print_r($all_projects_max_min_price_array);
        
        $region_max_min_price = array();

        foreach($data['regions'] as $val)
        {
            $region_max_array = [];
            $region_min_array = [];
            
            // echo 'region name: '.$val->name.'id = '.$val->id.'<br>';
            
            foreach($all_projects_max_min_price_array as $val2)
            {
                
                if($val->id == $val2['region_id'])
                {
                    // echo 'project id = '.$val2["project_id"].'===>'.'max price: '.$val2["max_price"].'===> min price: '.$val2["min_price"].'<br>';
                    
                    if($val2['max_price'] != 0)
                    {
                        $region_max_array[] = $val2['max_price'];
                    }
                    if($val2['min_price'] != 0)
                    {
                        $region_min_array[] = $val2['min_price'];
                    }
                }
            }
            // foreach($region_max_array as $ss)
            // {
            //     echo $ss."--->";
            // }
            // echo "<br>";
            // foreach($region_min_array as $ss)
            // {
            //     echo $ss."--->";
            // }
            
            // echo 'region_max_array = <br>';
            // print_r($region_max_array);
            // echo '<br>';
            // echo 'region_min_array = <br>';
            // print_r($region_min_array);
            // echo '<br>========================<br>';
        
            $region_max_price = 0;
            $region_min_price = 0;
            if(count($region_max_array) > 0)
            {
                $region_max_price = max($region_max_array);
            }
            if(count($region_min_array) > 0)
            {
                $region_min_price = min($region_min_array);
            }
            //echo '<br>region_max_price <span style="color:red">'. $region_max_price.'</span><br>';
            //echo 'region_min_price<span style="color:red">'. $region_min_price.'</span><br>';
            //echo "<br>==========================================================<br>";
            
            $result2 = array('region_id' => $val->id,
                             'region_max_price' => $region_max_price,
                             'region_min_price' => $region_min_price);
            $region_max_min_price[] =  $result2;
        }
        // echo 'region_max_array = <br>';
        // print_r($region_max_array);
        // echo '<br>region_min_array = <br>';
        // print_r($region_min_array);
        // echo '<br>========================<br>';
        
        //print_r($region_max_min_price);
        
        $data['region_max_min_price'] =  $region_max_min_price;
        return view('region.max_min_price_in_region')->with($data);
    }
}
