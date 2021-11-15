<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProjectNumberOfRooms extends Model
{
    protected $guarded = ['id'];

    public function project()
    {
        return $this->hasOne('App\Models\Project','id','project_id');
    }
    
    public function numberOfRooms()
    {
        return $this->hasOne('App\Models\NumberOfRoom','id','number_of_rooms_id');
    }
    
}
