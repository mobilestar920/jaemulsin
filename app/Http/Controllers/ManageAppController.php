<?php

namespace App\Http\Controllers;

use App\Apps;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class ManageAppController extends Controller
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
        $cond = Apps::where('is_deleted', false)->orderBy('id');
        $users = $cond->get();
        return view('apps', array('apps' => $users));
    }

    public function editApp(Request $request) {
        $app_id = $request->app_id;

        $app = Apps::where('id', $app_id)->first();

        if ($app == null) {
            $app = new Apps();
        }

        $app->name = $request->app_name;
        $app->version = $request->app_version;
        $app->package_name = $request->package_name;
        $app->download_url = $request->download_link;
        $app->save();

        return redirect('/apps');
    }

    public function deleteApp(Request $request) {
        $app_id = $request->delete_id;

        $app = Apps::where('id', $app_id)->first();

        if ($app == null) {
            return response()->json(['success'=>false, 'message'=>'application does not exist']);
        }

        $filename = $app->id.'.apk';
        $realLocation = resource_path().'/apk'.'/'.strval($filename);
        
        if (File::exists($realLocation)) {
            File::delete($realLocation);
        }

        $app->is_deleted = true;
        $app->save();

        return redirect('/apps');
    }
}