<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AppResources extends Model
{
    protected $table = 'app_resources';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'app_id', 'type_id', 'version'
    ];


    public function rApp() {
        return $this->belongsTo(Apps::class, 'app_id');
    }

    public function rDeviceType() {
        return $this->belongsTo(DeviceType::class, 'type_id');
    }
}
