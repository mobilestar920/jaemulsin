<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Device;
use App\DeviceType;
use Illuminate\Http\Request;

class AddUserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index() {
        return view('newuser');
    }

    public function addNewUser(Request $request) {

        $phone = $request->phone;
        $user_name   = $request->user_name;
        $password    = $request->password;

        $user = Customer::where('user_name', $user_name)->first();

        if ($user != null) {
            $response = ['success' => false, 'message' => 'Username has already taken by someone.'];
            return response()->json($response);
        }

        $user = Customer::where('phone', $phone)->first();

        if ($user != null) {
            $response = ['success' => false, 'message' => 'Your phone number has already taken by someone.'];
            return response()->json($response);
        }

        $imei = $request->imei;
        $device = Device::where('imei', $imei)->first();

        if ($device == null) {
            $response = ['success' => false, 'message' => 'Device Not Exist.'];
            return response()->json($response);
        }

        $user_count = Customer::where('id', '>', '-1')->count() + 1;
        $str_length = 5;
        $code = 'XCS'.substr("0000{$user_count}", -$str_length);

        $newUser = new Customer();
        $newUser->code = $code;
        $newUser->user_name = $user_name;
        $newUser->phone = $phone;
        $newUser->password = $password;
        $newUser->email = $request->email;
        $newUser->gender = $request->gender;
        $newUser->note = $request->note;
        $newUser->device_id = $device->id;
        $newUser->province = $request->province;
        $newUser->city = $request->city;
        $newUser->street = $request->street;
        $newUser->address1 = $request->address1;
        $newUser->address2 = $request->address2;
        $newUser->expire_at = $request->end_date;

        $newUser->save();

        return redirect('/users');
    }
}
