<?php

namespace App\Http\Controllers;

use App\Customer;
use App\User;
use Illuminate\Http\Request;

class ManageUserController extends Controller
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
        $cond = Customer::where('is_blocked', false)->orderBy('id');
        $users = $cond->get();

        $userList = [];
        foreach ($users as $user) {
            $data = [];
            $data['id'] = $user->id;
            $data['user_code'] = $user->code;
            $data['phone'] = $user->phone;
            
            $device = $user->rDevice;
            $data['imei'] = $device->imei;

            $data['updated_at'] = $user->updated_at;
            $data['expire_at'] = $user->expire_at;
            $data['note'] = $user->note;

            array_push($userList, $data);
        }

        return view('user', array('users' => $userList));
    }

    public function expandLicence(Request $request) {

        $user_id = $request->user_edit_id;
        $endDate = $request->end_date;
        $note = $request->note;

        $user = Customer::where('id', $user_id)->first();

        if ($user == null) {
            return response()->json(['success' => false, 'message' => 'User does not exist']);
        }

        if ($user->is_blocked == true) {
            return response()->json(['success' => false, 'message' => 'User has already blocked']);
        }

        $user->expire_at = $endDate;
        $user->note = $note;
        $user->save();

        return redirect('/users');
    }

    public function blockUser(Request $request) {
        $user_id = $request->user_id;

        $user = Customer::where('id', $user_id)->first();

        if ($user == null) {
            return response()->json(['success' => false, 'message' => 'User does not exist']);
        }

        if ($user->is_blocked == true) {
            return response()->json(['success' => false, 'message' => 'User has already blocked']);
        }

        $user->is_blocked = true;
        $user->save();

        return redirect('/users');
    }
}
