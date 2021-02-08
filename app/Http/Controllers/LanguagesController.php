<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Config;
use App;

class LanguagesController extends Controller
{
    //

    public function set($lang)
    {
        session(['applocale' => $lang]);


        return back();
    }
}
