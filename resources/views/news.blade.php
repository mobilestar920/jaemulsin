@extends('layouts.master')

@section('head')
<script src="{{ asset('js/news.js') }}"></script>
@endsection

@section('content')
<div>
    <div class="sidebar">
        <div class="sidebar-inner">
            <!-- ### $Sidebar Header ### -->
            <div class="sidebar-logo">
                <div class="peers ai-c fxw-nw">
                    <div class="peer peer-greed">
                        <a class="sidebar-link td-n" href="index.html">
                            <div class="peers ai-c fxw-nw">
                                <div class="peer">
                                    <div class="logo">
                                        <img src="assets/static/images/logo.png" alt="">
                                    </div>
                                </div>
                                <div class="peer peer-greed">
                                    <h5 class="lh-1 mB-0 logo-text">Adminator</h5>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="peer">
                        <div class="mobile-toggle sidebar-toggle">
                            <a href="" class="td-n">
                                <i class="ti-arrow-circle-left"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ### $Sidebar Menu ### -->
            <ul class="sidebar-menu scrollable pos-r">
                <!-- <li class="nav-item mT-30 actived">
                    <a class="sidebar-link" href="{{ url('/admin') }}">
                        <span class="icon-holder">
                            <i class="c-blue-500 ti-home"></i>
                        </span>
                        <span class="title">{{ Lang::get('localizedStr.side_dashboard') }}</span>
                    </a>
                </li> -->
                <li class="nav-item">
                    <a class='sidebar-link' href="{{ url('/users') }}">
                        <span class="icon-holder">
                            <i class="c-brown-500 ti-user"></i>
                        </span>
                        <span class="title">{{ Lang::get('localizedStr.side_users') }}</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class='sidebar-link' href="{{ url('/resources') }}">
                        <span class="icon-holder">
                            <i class="c-blue-500 ti-file"></i>
                        </span>
                        <span class="title">{{ Lang::get('localizedStr.side_resources') }}</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class='sidebar-link' href="{{ url('/apps') }}">
                        <span class="icon-holder">
                            <i class="c-blue-500 ti-android"></i>
                        </span>
                        <span class="title">{{ Lang::get('localizedStr.side_apps') }}</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class='sidebar-link' href="{{ url('/me/apps') }}">
                        <span class="icon-holder">
                            <i class="c-blue-500 ti-import"></i>
                        </span>
                        <span class="title">{{ Lang::get('localizedStr.side_my_app') }}</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class='sidebar-link' href="{{ url('/news') }}">
                        <span class="icon-holder">
                            <i class="c-deep-orange-500 ti-bell"></i>
                        </span>
                        <span class="title">{{ Lang::get('localizedStr.side_news') }}</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="page-container">
        <div class="header navbar">
            <div class="header-container">
                <ul class="nav-left">
                    <li>
                        <a id='sidebar-toggle' class="sidebar-toggle" href="javascript:void(0);">
                            <i class="ti-menu"></i>
                        </a>
                    </li>
                </ul>
                <ul class="nav-right">
                    <li class="dropdown">
                        <a href="" class="dropdown-toggle no-after peers fxw-nw ai-c lh-1" data-toggle="dropdown">
                            <div class="peer mR-10">
                                <img class="w-2r bdrs-50p" src="https://randomuser.me/api/portraits/men/10.jpg" alt="">
                            </div>
                            <div class="peer">
                                <span class="fsz-sm c-grey-900">{{ Auth::user()->name }}</span>
                            </div>
                        </a>
                        <ul class="dropdown-menu fsz-sm">
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="" class="d-b td-n pY-5 bgcH-grey-100 c-grey-700">
                                    <i class="ti-power-off mR-10"></i>
                                    <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <main class='main-content bgc-grey-100'>
            <div id='mainContent'>
                <div class="container-fluid">
                    <h4 class="c-grey-900 mT-10 mB-30">News Management</h4>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                                <form style="display: flex">
                                    <h4 class="c-grey-900 mB-20" style="flex: 1 1 auto;">News</h4>
                                    <button id="btn_add_news" class="btn btn-danger" type="button" style="margin-bottom: 20px !important;">Add News</button>
                                </form>
                                <table id="dataTable" class="table table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Title</th>
                                            <th>Content</th>
                                            <th>Date</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($newsList as $i=>$news)
                                        <tr>
                                            <td>{{ $news->title }}</td>
                                            <td> {{ $news->body }} </td>
                                            <td>{{ $news->created_at }}</td>
                                            <td>
                                                <div class="peers mR-15">
                                                    <div class="peer">
                                                        <span id="delete_news" class="td-n c-pink-500 cH-blue-500 fsz-md p-5" news_id="{{ strval($news->id) }}">
                                                            <i class="ti-edit"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="modal" id="delete_dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="bd p-15">
                                    <h5 class="m-0">Delete News</h5>
                                </div>
                                <div class="modal-body">
                                    <form method="POST" action="{{ route('blockUser') }}" enctype="multipart/form-data">
                                        @csrf
                                        <div class="form-group" style="visibility: hidden; max-height: 0px;">
                                            <label class="fw-500">Id</label>
                                            <input type="text" class="form-control" id="news_id" name="news_id" placeholder="User ID">
                                        </div>
                                        <div class="form-group" style="text-align: center;">
                                            <label class="fw-500">Do you want to delete the news?</label>
                                        </div>
                                        <div class="row" style="margin-bottom: 20px;">
                                            <div class="col-md-6" style="text-align: center;">
                                                <button class="btn btn-primary cur-p" id="btn_cancel" data-dismiss="modal">Cancel</button>
                                            </div>
                                            <div class="col-md-6" style="text-align: center;">
                                                <button class="btn btn-primary cur-p" id="btn_block" type="submit">Delete</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal" id="news_add_dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="bd p-15">
                                    <h5 class="m-0">Add News</h5>
                                </div>
                                <div class="modal-body">
                                    <form method="POST" action="{{ route('addNews') }}" enctype="multipart/form-data">
                                        @csrf
                                        <div class="row" style="margin-bottom: 20px;">
                                            <div class="col-md-12">
                                                <label class="fw-500">Title</label>
                                                <input type="text" class="form-control" id="news_title" name="news_title">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="fw-500">Body</label>
                                            <textarea class="form-control bdc-grey-200" rows='5' id="news_body" name="news_body"></textarea>
                                        </div>
                                        <div class="text-right">
                                            <button class="btn btn-primary cur-p" id="btn_update" type="submit">Done</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </main>
    </div>
</div>
@endsection