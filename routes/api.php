<?php

use Illuminate\Http\Request;
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


Route::group([
    'prefix' => 'auth'
], function ($router) {
    Route::post('/customer/signup', 'API\\CustomerLoginController@register');
    Route::post('/customer/signin', 'API\\CustomerLoginController@login');
});

Route::group([
    'middleware' => ['assign.guard:api', 'jwt.auth']
], function ($router) {
    Route::get('apps', 'API\\AppListController@index');
    Route::get('apps/ids', 'API\\AppListController@downloadableAppIds');
    Route::get('me/{id}', 'API\\AppListController@caishenDownload');
    Route::get('news/latest', 'API\\AppListController@getLatestNews');
    Route::get('me/login/status', 'API\\AppListController@userAvailable');
});

Route::group([
    'prefix' => 'app',
    'middleware' => ['assign.guard:api', 'jwt.auth']
], function ($router) {
    Route::get('download/{id}', 'API\\AppListController@download');
    Route::get('resource/{id}', 'API\\AppListController@resourceDownload');
    Route::get('mile/{id}', 'API\\AppListController@getMileResource');
    Route::get('changbao/{id}', 'API\\AppListController@changbaoDownload');
});