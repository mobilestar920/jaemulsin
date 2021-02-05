<?php

namespace App\Http\Controllers;

use App\Device;
use App\DeviceType;
use Illuminate\Http\Request;

class ManageDeviceController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $cond = Device::where('id','>',-1);
        $devices = $cond->get();

        $deviceList = [];
        foreach ($devices as $device) {
            $data = [];
            $data['id'] = $device->id;
            $data['imei'] = $device->imei;
            $data['android_id'] = $device->android_id;

            $type = $device->rDeviceType;
            $data['type'] = $type->name;
            $data['register_at'] = $device->created_at;

            array_push($deviceList, $data);
        }

        

        return view('devices', array('devices' => $deviceList));
    }

    public function retrieveDeviceList($type) {

    }
}
