<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $guarded = ['id'];  

    public function regions()
    {
        return $this->hasMany('App\Models\Region', 'city_id', 'id');
    }
}
