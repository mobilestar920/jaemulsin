<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MyApps extends Model
{
    protected $table = 'myapps';
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'version' 
    ];
}
