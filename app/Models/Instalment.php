<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Instalment extends Model
{
    protected $guarded = ['id'];

 
    public function Project()
    {
        return $this->hasOne('App\Models\Project','id','instalment_id_fk');
    } 
}
