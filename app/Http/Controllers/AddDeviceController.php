<?php

namespace App\Http\Controllers;

use App\Device;
use App\DeviceType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class AddDeviceController extends Controller
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
        $cond = DeviceType::where('id','>',-1);
        $types = $cond->get();
        
        return view('newdevice', array('types' => $types));
    }

    
    public function addNewDevice(Request $request)
    {
        $imei   = $request->imei;
        $android_id = $request->android_id;
        $phone_type  = $request->phone_type;
        $new_type = $request->new_type;

        $newDevice = new Device();
        $newDevice->imei = $imei;
        $newDevice->android_id = $android_id;
            
        if ($phone_type != 0) {
            $newDevice->type_id = $phone_type;
        } else {
            $type = DeviceType::where('name', $new_type)->first();

            if ($type == null) {
                $folderPath = resource_path().'/js/temp/';
                $type = new DeviceType();
                $type->name = $new_type;
                $type->save();

                $folderPath = resource_path().'/js/temp/'.strval($type->id).'/';
                File::makeDirectory($folderPath);

                $newDevice->type_id = $type->id;
            } else {
                $newDevice->type_id = $type->id;
            
            }
        }

        $newDevice->save();

        return redirect('/devices');
    }
}
