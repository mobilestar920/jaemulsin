<?php

namespace App\Http\Controllers;

use App\News;
use Illuminate\Http\Request;

class ManageNewsController extends Controller
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
        $cond = News::where('id', '>', -1)->orderBy('created_at', 'desc');
        $news = $cond->get();

        return view('news', array('newsList' => $news));
    }

    public function createNews(Request $request) {

        $title = $request->news_title;
        $body = $request->news_body;

        $news = new News();
        $news->title = $title;
        $news->body = $body;
        $news->save();

        return $this->index();
    }
}
