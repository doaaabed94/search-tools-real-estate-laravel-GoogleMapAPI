<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OfferOrder extends Model
{
    protected $guarded = ['id'];

    public function responsible()
    {
        return $this->hasOne('App\Models\User','id','responsilble_id');
    }

    public function region()
    {
        return $this->hasOne('App\Models\Region','id','region_id');
    }

    public function numberOfRooms()
    {
        return $this->hasOne('App\Models\NumberOfRoom', 'id', 'number_of_rooms_id');
    }
    
}
