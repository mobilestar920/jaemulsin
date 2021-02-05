<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/admin', 'AdminController@index')->name('admin');

// Customer
Route::get('/users', 'ManageUserController@index')->name('users');
Route::post('/user/expand', 'ManageUserController@expandLicence')->name('expandLicence');
Route::post('/user/block', 'ManageUserController@blockUser')->name('blockUser');
Route::get('/newuser', 'AddUserController@index')->name('newuser');
Route::post('/newuser', 'AddUserController@addNewUser');

// Device Type
Route::get('/resources', 'ManageResourceController@index')->name('getresources');
Route::post('/resource/upload', 'ManageResourceController@uploadResource')->name('uploadResource');
Route::post('/resource/mile', 'ManageResourceController@uploadMileResource')->name('uploadResMile');
Route::post('/resource/changbao', 'ManageResourceController@uploadChangbaoResource')->name('uploadChangbao');
Route::post('/resource/update', 'ManageResourceController@updateResource')->name('updateResource');

// App
Route::get('/apps', 'ManageAppController@index')->name('apps');
Route::get('/newapp', 'AddAppController@index')->name('newapp');
Route::post('/newapp', 'AddAppController@addNewApp');
Route::post('/app/update', 'ManageAppController@editApp')->name('updateApp');
Route::post('/app/delete', 'ManageAppController@deleteApp')->name('deleteApp');

// My App
Route::get('/me/apps', 'ManageMyAppController@index')->name('myApps');
Route::post('/me/app/new', 'ManageMyAppController@addNewVersion')->name('addNewVersion');


// News
Route::get('/news', 'ManageNewsController@index')->name('news');
Route::post('/news/new', 'ManageNewsController@createNews')->name('addNews');

// Change Language
Route::get('/language/{lang}', 'LanguagesController@set')->name('changeLanguage');
