<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Device extends Model
{
    protected $table = 'devices';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'imei', 'android_id', 'type_id'
    ];

    public function rCustomer() {
        return $this->hasOne(Customer::class, 'device_id');
    }

    public function rDeviceType() {
        return $this->belongsTo(DeviceType::class, 'type_id');
    }
}
