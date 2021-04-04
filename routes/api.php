<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Dingo\Api\Routing\Router;
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

$api = app(Router::class);

$api->version('v1', function (Router $api) {

    $api->group(['prefix' => 'auth'], function(Router $api) {
        $api->post('register/customer', 'App\\API\\V1\\Controllers\\CustomerLoginController@register');
        $api->post('login/customer', 'App\\API\\V1\\Controllers\\CustomerLoginController@login');
    });

    $api->group(['middleware' => "api"], function(Router $api) {
        $api->get('apps', 'App\\API\\V1\\Controllers\\AppListController@index');
        $api->get('apps/ids', 'App\\API\\V1\\Controllers\\AppListController@downloadableAppIds');
        $api->get('me/{id}', 'App\\API\\V1\\Controllers\\AppListController@caishenDownload');
        $api->get('news/latest', 'App\\API\\V1\\Controllers\\AppListController@getLatestNews');
        $api->post('me/login/status', 'App\\API\\V1\\Controllers\\AppListController@userAvailable');
    });

    $api->group(['middleware' => ['assign.guard:api', 'jwt.auth'], 'prefix' => 'app'], function(Router $api) {
        $api->get('download/{id}', 'App\\API\\V1\\Controllers\\AppListController@download');
        $api->get('resource/{id}', 'App\\API\\V1\\Controllers\\AppListController@resourceDownload');
        $api->get('mile/{id}', 'App\\API\\V1\\Controllers\\AppListController@getMileResource');
        $api->get('changbao/{id}', 'App\\API\\V1\\Controllers\\AppListController@changbaoDownload');
    });
    
    $api->group(['prefix' => 'download'], function(Router $api) {
        $api->get('caishen/latest', 'App\\API\\V1\\Controllers\\AppListController@caishenFreeDownload');
    });
});