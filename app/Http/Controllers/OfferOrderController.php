<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\OfferOrderRequest;
use App\Models\OfferOrder;
use App\Models\Region;
use App\Models\NumberOfRoom;
use App\Models\User;
use Illuminate\Support\Facades\Log;


class OfferOrderController extends Controller
{
    public function index()
    {

        $data['rows'] = OfferOrder::orderBy('id','DESC')
        ->paginate(100);

        
        return view('offerOrders.index')->with($data);
    }
    
    public function create()
    {
        $data['regions'] = Region::select('id', 'name', 'city_id')
        ->get();

        $data['number_of_rooms'] = NumberOfRoom::select('id', 'name')
        ->orderBy('id','ASC')
        ->get();

        return view('offerOrders.add')->with($data);
    }

    // storing data in db 
    public function store(Request $request)
    {

        $datas = $request->all();

        for ($i = 0; $i <= 5; $i++) {
            if($datas['client_name'][$i] !== null){
            
            $data['client_name']=$datas['client_name'][$i];
            $data['date_visit']=$datas['date_visit'][$i];
            $data['notes']=$datas['notes'][$i];
            $data['link']=$datas['link'][$i];

        $data["responsilble_id"] = auth()->guard('admin')->user()->id;
        OfferOrder::create($data); // inserting data
         } 

        }

        return response()->json($datas);
    }

    public function view($id)
    {
        $data['row'] = OfferOrder::findOrFail($id);

        $data['regions'] = Region::select('id', 'name', 'city_id')
        ->get();

        $data['number_of_rooms'] = NumberOfRoom::select('id', 'name')
        ->orderBy('id','ASC')
        ->get();

        return view('offerOrders.view')->with($data);
    }

    public function edit($id)
    {
        $data['row'] = OfferOrder::findOrFail($id);

        $data['regions'] = Region::select('id', 'name', 'city_id')
        ->get();

        $data['number_of_rooms'] = NumberOfRoom::select('id', 'name')
        ->orderBy('id','ASC')
        ->get();

        return view('offerOrders.edit')->with($data);
    }

    // storing data in db 
    public function update(OfferOrderRequest $request)
    {

        $data = $request->validated();
        
        OfferOrder::where('id', $request->id)->update($data);


        $msg['success'] = trans('admin.msg.EditedSuccess');
        return response()->json($msg);

    }

    // deleteing row from db  ( soft delete )
    public function delete($id)
    {

        OfferOrder::findOrFail($id)->delete();
    	$msg['success'] = trans('admin.msg.deleted_success');
        return response()->json($msg);

    }

    public function check($id)
    {

        OfferOrder::findOrFail($id)->update(['checked' => 'yes']);
        
        return redirect(route('get.offerOrder.index'));

    }

    public function uncheck($id)
    {

        OfferOrder::findOrFail($id)->update(['checked' => 'no']);
        
        return redirect(route('get.offerOrder.index'));

    }
}