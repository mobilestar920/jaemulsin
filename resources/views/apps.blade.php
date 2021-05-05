@extends('layouts.master')

@section('head')
<script src="{{ asset('js/apps.js') }}"></script>
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
                <li class="nav-item mT-30 actived">
                    <a class="sidebar-link" href="{{ url('/sellers') }}">
                        <span class="icon-holder">
                            <i class="c-blue-500 ti-home"></i>
                        </span>
                        <span class="title">{{ Lang::get('localizedStr.side_sellers') }}</span>
                    </a>
                </li>
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
                    <li>
                        @if( App::getLocale() == 'zh' )
                        <a href="{{ route('changeLanguage', 'en') }}" id='lang_toggle' class="sidebar-toggle">
                            <img class="w-2r bdrs-50p" src="{{ asset('images/uk_us.svg') }}" alt="">
                        </a>
                        @else
                        <a href="{{ route('changeLanguage', 'zh') }}" id='lang_toggle' class="sidebar-toggle">
                            <img class="w-2r bdrs-50p" src="{{ asset('images/zh_cn.svg') }}" alt="">
                        </a>
                        @endif

                    </li>
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
                    <h4 class="c-grey-900 mT-10 mB-30">{{ Lang::get('localizedStr.title_app_manage') }}</h4>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="bgc-white bd bdrs-3 p-20 mB-20">
                                <form style="display: flex">
                                    <h4 class="c-grey-900 mB-20" style="flex: 1 1 auto;">{{ Lang::get('localizedStr.app_list') }}</h4>
                                    <button class="btn btn-danger" type="submit" formaction="{{ route('newapp') }}" style="margin-bottom: 20px !important;">{{ Lang::get('localizedStr.app_new') }}</button>
                                </form>
                                <table id="dataTable" class="table table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>{{ Lang::get('localizedStr.resource_app_name') }}</th>
                                            <th>{{ Lang::get('localizedStr.app_package_name') }}</th>
                                            <th>{{ Lang::get('localizedStr.app_version') }}</th>
                                            <th>{{ Lang::get('localizedStr.app_update_date') }}</th>
                                            <th>{{ Lang::get('localizedStr.user_action') }}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($apps as $i=>$app)
                                        <tr>
                                            <td>{{ $app->id }}</td>
                                            <td>{{ $app->name }}</td>
                                            <td>{{ $app->package_name }}</td>
                                            <td>{{ $app->version}}</td>
                                            <td>{{ $app->updated_at}}</td>
                                            <td>
                                                <div class="peers mR-15">
                                                    <div class="peer">
                                                        <span id="edit_app" class="td-n c-deep-purple-500 cH-blue-500 fsz-md p-5" data-id="{{ $app->id }}" data-name="{{ $app->name }}" data-version="{{ $app->version }}" data-package="{{ $app->package_name }}">
                                                            <i class="ti-pencil"></i>
                                                        </span>
                                                    </div>
                                                    <div class="peer">
                                                        <span id="delete_app" class="td-n c-pink-500 cH-blue-500 fsz-md p-5" data-id="{{ $app->id }}">
                                                            <i class="ti-trash"></i>
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
                </div>

                <div class="modal" id="delete_dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="bd p-15">
                                <h5 class="m-0">{{ Lang::get('localizedStr.app_delete') }}</h5>
                            </div>
                            <div class="modal-body">
                                <form method="POST" action="{{ route('deleteApp') }}" enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group" style="visibility: hidden; max-height: 0px;">
                                        <label class="fw-500">Id</label>
                                        <input type="text" class="form-control" id="delete_id" name="delete_id" placeholder="App ID">
                                    </div>
                                    <div class="form-group" style="text-align: center;">
                                        <label class="fw-500">{{ Lang::get('localizedStr.app_msg_delete') }}</label>
                                    </div>
                                    <div class="row" style="margin-bottom: 20px;">
                                        <div class="col-md-6" style="text-align: center;">
                                            <button class="btn btn-primary cur-p" id="btn_cancel" data-dismiss="modal">{{ Lang::get('localizedStr.btn_cancel') }}</button>
                                        </div>
                                        <div class="col-md-6" style="text-align: center;">
                                            <button class="btn btn-primary cur-p" id="btn_delete" type="submit">{{ Lang::get('localizedStr.btn_delete') }}</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal" id="update_app">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="bd p-15">
                                <h5 class="m-0">{{ Lang::get('localizedStr.app_update') }}</h5>
                            </div>
                            <div class="modal-body">
                                <form method="POST" action="{{ route('updateApp') }}" enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group" style="visibility: hidden; max-height: 0px;">
                                        <label class="fw-500">Id</label>
                                        <input type="text" class="form-control" id="app_id" name="app_id" placeholder="App ID">
                                    </div>
                                    <div class="form-group">
                                        <label for="app_name">{{ Lang::get('localizedStr.resource_app_name') }}</label>
                                        <input type="text" class="form-control" id="app_name" name="app_name" placeholder="App Name">
                                    </div>
                                    <div class="row" style="margin-bottom: 20px;">
                                        <div class="col-md-6">
                                            <label for="package_name" class="fw-500">{{ Lang::get('localizedStr.app_package_name') }}</label>
                                            <input type="text" class="form-control" id="package_name" name="package_name" placeholder="com.example.app">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="app_version" class="fw-500">{{ Lang::get('localizedStr.app_version') }}</label>
                                            <input type="text" class="form-control" id="app_version" name="app_version" placeholder="1.0.0">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="download_link" class="fw-500">{{ Lang::get('localizedStr.app_download_link') }}</label>
                                        <input type="text" class="form-control" id="download_link" name="download_link" placeholder="https://com.example.com/download/example.apk">
                                    </div>
                                    <div class="text-right">
                                        <button class="btn btn-primary cur-p" id="btn_update" type="submit">{{ Lang::get('localizedStr.app_update') }}</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
@endsection