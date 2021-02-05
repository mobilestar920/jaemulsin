<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeviceType extends Model
{
    protected $table = 'device_types';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'folder_name'
    ];

    public function rDevice() {
        return $this->hasMany(Device::class, 'type_id');
    }

    public function rAppResources() {
        return $this->hasMany(AppResources::class, 'type_id');
    }
}
