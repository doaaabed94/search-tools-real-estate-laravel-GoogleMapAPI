<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProjectImg extends Model
{
    protected $guarded = ['id'];

     public function Project()
    {
        return $this->hasOne('App\Models\Project','id','project_id');
    }

    
}
