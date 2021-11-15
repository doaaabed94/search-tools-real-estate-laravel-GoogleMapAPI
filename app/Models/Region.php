<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    protected $guarded = ['id'];

    public function city()
    {
        return $this->hasOne('App\Models\City','id','city_id');
    } 

}
