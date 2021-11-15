<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    protected $guarded = ['id'];

    public function region()
    {
        return $this->hasOne('App\Models\Region','id','region_id');
    }

    public function projectNumberOfRooms()
    {
        return $this->hasMany('App\Models\ProjectNumberOfRooms', 'project_id', 'id');
    }
    
        public function Instalment()
    {
        return $this->hasOne('App\Models\Instalment', 'id', 'instalment_id_fk');
    }

        public function ProjectImg()
    {
         return $this->hasMany('App\Models\ProjectImg')->where($this->project_id)->count();

    }
    
      public function Category()
    {
        return $this->hasOne('App\Models\Category', 'id', 'category_id_fk');
    }
        public function images()
    {
        return $this->hasMany('App\Models\ProjectImg', 'project_id', 'id');
    }

         public function video()
    {
        return $this->hasMany('App\Models\ProjectVideo', 'project_id', 'id');
    }

           public function images_order_number()
    {
        return $this->hasMany('App\Models\ProjectImg', 'project_id', 'id')->orderBy('order_number', 'ASC');

    }
    
}
