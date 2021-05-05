<?php

namespace App\Http\Controllers;

use App\Customer;
use App\User;
use Illuminate\Http\Request;

class ManageSellerController extends Controller {
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
        $cond = User::where('role', 1)->orderBy('id');
        $users = $cond->get();

        $userList = [];
        foreach ($users as $user) {
            $data = [];
            $data['id'] = $user->id;
            $data['name'] = $user->name;
            $data['role'] = $user->role;
            $data['email'] = $user->email;
            $data['updated_at'] = $user->updated_at;
            $data['created_at'] = $user->created_at;

            array_push($userList, $data);
        }

        return view('sellers', array('users' => $userList));
    }
}