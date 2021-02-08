<?php

namespace App\Http\Controllers;

use App\Customer;
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

        $user = Customer::where('phone', $phone)->first();

        if ($user != null) {
            $response = ['success' => false, 'message' => 'Your phone number has already taken by someone.'];
            return response()->json($response);
        }

        $imei = $request->imei;
        
        $user_count = Customer::where('id', '>', '-1')->count() + 1;
        $str_length = 5;
        $code = 'XCS'.substr("0000{$user_count}", -$str_length);

        $newUser = new Customer();
        $newUser->code = $code;
        $newUser->phone = $phone;
        $newUser->note = $request->note;
        $newUser->device_id = $imei;
        $newUser->expire_at = $request->end_date;

        $newUser->save();

        return redirect('/users');
    }
}
