<?php

use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['prefix' => 'v1/auth'], function($router) {
    Route::post('register/customer', 'API\\V1\\Controllers\\CustomerLoginController@register');
    Route::post('login/customer', 'API\\V1\\Controllers\\CustomerLoginController@login');
});

Route::group(['middleware' => ['assign.guard:api', 'jwt.auth'], 'prefix' => 'v1'], function($router) {
    Route::get('apps', 'API\\V1\\Controllers\\AppListController@index');
    Route::get('apps/ids', 'API\\V1\\Controllers\\AppListController@downloadableAppIds');
    Route::get('me/{id}', 'API\\V1\\Controllers\\AppListController@caishenDownload');
    Route::get('news/latest', 'API\\V1\\Controllers\\AppListController@getLatestNews');
    Route::post('me/login/status', 'API\\V1\\Controllers\\AppListController@userAvailable');
});


Route::group(['middleware' => ['assign.guard:api', 'jwt.auth'], 'prefix' => 'app'], function($router) {
    Route::get('download/{id}', 'API\\V1\\Controllers\\AppListController@download');
    Route::get('resource/{id}', 'API\\V1\\Controllers\\AppListController@resourceDownload');
    Route::get('mile/{id}', 'API\\V1\\Controllers\\AppListController@getMileResource');
    Route::get('changbao/{id}', 'API\\V1\\Controllers\\AppListController@changbaoDownload');
});

Route::group(['prefix' => 'download'], function($router) {
    Route::get('caishen/latest', 'API\\V1\\Controllers\\AppListController@caishenFreeDownload');
});