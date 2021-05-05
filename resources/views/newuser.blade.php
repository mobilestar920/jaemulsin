@extends('layouts.master')

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
                    <a class='sidebar-link' href="{{ url('/devices') }}">
                        <span class="icon-holder">
                            <i class="c-blue-500 ti-mobile"></i>
                        </span>
                        <span class="title">{{ Lang::get('localizedStr.side_devices') }}</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class='sidebar-link' href="{{ url('/devicetypes') }}">
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
                <div class="masonry-item">
                    <div class="bgc-white p-20 bd">
                        <h6 class="c-grey-900">{{ Lang::get('localizedStr.register_new') }}</h6>
                        <div class="mT-30">
                            <form method="POST" action="{{ route('newuser') }}" enctype="multipart/form-data">
                                @csrf
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="phone">{{ Lang::get('localizedStr.user_phone') }}</label>
                                        <input type="text" class="form-control" id="phone" name="phone" placeholder="1234567890">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="imei">{{ Lang::get('localizedStr.user_device') }}</label>
                                        <input type="text" class="form-control" id="imei" name="imei" placeholder="IMEI">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="fw-500">{{ Lang::get('localizedStr.user_note') }}</label>
                                    <textarea class="form-control bdc-grey-200" id="note" name="note" rows='5'></textarea>
                                </div>
                                <div class="form-group" style="text-align: center; margin-top: 40px;">
                                    <button type="submit" class="btn btn-primary">{{ Lang::get('localizedStr.register_new') }}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
@endsection