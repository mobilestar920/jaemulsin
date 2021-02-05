<?php

namespace App\Http\Controllers;

use App\Apps;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;

class AddAppController extends Controller
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
        return view('newapp');
    }

    public function addNewApp(Request $request) {
        
        $app = Apps::where('package_name', $request->package_name)->where('is_deleted', true)->orderBy('id')->first();

        if ($app == null) {
            $app = new Apps();
        }

        $app->name = $request->name;
        $app->package_name = $request->package_name;
        $app->version = $request->version;
        $app->download_url = $request->download_link;
        $app->is_deleted = false;
        $app->save();

        return redirect('/apps');
    }
}