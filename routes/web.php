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
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    // return what you want
});

Route::get('errors-403', function() {
    return view('errors.403');
});
Route::group(['namespace' => 'Admin', 'prefix' => 'admin'], function() {

    Route::group(['namespace' => 'Auth'], function() {
        Route::get('/login', 'LoginController@login')->name('admin.login');
        Route::post('/login', 'LoginController@postLogin');
        Route::get('/register', 'RegisterController@getRegister')->name('admin.register');
        Route::post('/register', 'RegisterController@postRegister');
        Route::get('/logout', 'LoginController@logout')->name('admin.logout');
        Route::get('/forgot/password', 'ForgotPasswordController@forgotPassword')->name('admin.forgot.password');
    });

    Route::group(['middleware' =>['admins']], function() {
        Route::get('/home', 'HomeController@index')->name('admin.home');

        Route::group(['prefix' => 'group-permission'], function(){
            Route::get('/','GroupPermissionController@index')->name('group.permission.index');
            Route::get('/create','GroupPermissionController@create')->name('group.permission.create');
            Route::post('/create','GroupPermissionController@store');

            Route::get('/update/{id}','GroupPermissionController@edit')->name('group.permission.update');
            Route::post('/update/{id}','GroupPermissionController@update');

            Route::get('/delete/{id}','GroupPermissionController@destroy')->name('group.permission.delete');
        });

        Route::group(['prefix' => 'permission'], function(){
            Route::get('/','PermissionController@index')->name('permission.index');
            Route::get('/create','PermissionController@create')->name('permission.create');
            Route::post('/create','PermissionController@store');

            Route::get('/update/{id}','PermissionController@edit')->name('permission.update');
            Route::post('/update/{id}','PermissionController@update');

            Route::get('/delete/{id}','PermissionController@delete')->name('permission.delete');
        });

        Route::group(['prefix' => 'role'], function(){
            Route::get('/','RoleController@index')->name('role.index');
            Route::get('/create','RoleController@create')->name('role.create');
            Route::post('/create','RoleController@store');

            Route::get('/update/{id}','RoleController@edit')->name('role.update');
            Route::post('/update/{id}','RoleController@update');

            Route::get('/delete/{id}','RoleController@delete')->name('role.delete');
        });

        Route::group(['prefix' => 'user'], function(){
            Route::get('/','UserController@index')->name('user.index');
            Route::get('/create','UserController@create')->name('user.create');
            Route::post('/create','UserController@store');

            Route::get('/update/{id}','UserController@edit')->name('user.update');
            Route::post('/update/{id}','UserController@update');

            Route::get('/delete/{id}','UserController@delete')->name('user.delete');
        });
        Route::group(['prefix' => 'category'], function(){
            Route::get('/','CategoryController@index')->name('category.index');
            Route::get('/create','CategoryController@create')->name('category.create');
            Route::post('/create','CategoryController@store');

            Route::get('/update/{id}','CategoryController@edit')->name('category.update');
            Route::post('/update/{id}','CategoryController@update');

            Route::get('/delete/{id}','CategoryController@delete')->name('category.delete');
        });

        Route::group(['prefix' => 'article'], function(){
            Route::get('/','ArticleContrller@index')->name('article.index');
            Route::get('/create','ArticleContrller@create')->name('article.create');
            Route::post('/create','ArticleContrller@store');

            Route::get('/update/{id}','ArticleContrller@edit')->name('article.update');
            Route::post('/update/{id}','ArticleContrller@update');

            Route::get('/delete/{id}','ArticleContrller@delete')->name('article.delete');
        });

        Route::group(['prefix' => 'location'], function(){
            Route::get('/','LocationController@index')->name('location.index');
            Route::get('/create','LocationController@create')->name('location.create');
            Route::post('/create','LocationController@store');

            Route::get('/update/{id}','LocationController@edit')->name('location.update');
            Route::post('/update/{id}','LocationController@update');

            Route::get('/delete/{id}','LocationController@delete')->name('location.delete');
        });

        Route::group(['prefix' => 'tour'], function(){
            Route::get('/','TourController@index')->name('tour.index');
            Route::get('/create','TourController@create')->name('tour.create');
            Route::post('/create','TourController@store');

            Route::get('/update/{id}','TourController@edit')->name('tour.update');
            Route::post('/update/{id}','TourController@update');

            Route::get('/delete/{id}','TourController@delete')->name('tour.delete');
        });
    });
});

Route::group(['namespace' => 'Page'], function() {

    Route::group(['namespace' => 'Auth'], function() {
        Route::get('/user/account', 'LoginController@login')->name('page.user.account');
        Route::post('/account/login', 'LoginController@postLogin')->name('account.login');
        Route::post('/register/account', 'RegisterController@postRegister')->name('account.register');
        Route::get('/logout', 'LoginController@logout')->name('page.user.logout');
        Route::get('/forgot/password', 'ForgotPasswordController@forgotPassword')->name('page.user.forgot.password');
    });

    Route::group(['middleware' =>['users']], function() {
        Route::get('thong-tin-tai-khoan.html', 'AccountController@infoAccount')->name('info.account');
        Route::get('danh-sach-giao-dich.html', 'AccountController@transactionUser')->name('users.transactions');
        Route::post('/update/info/account', 'AccountController@updateInfoAccount')->name('update.info.account');
        Route::get('thay-doi-mat-khau', 'AccountController@changePassword')->name('change.password');
        Route::post('change/password', 'AccountController@postChangePassword')->name('post.change.password');
        Route::post('cancel/order/{id}', 'AccountController@cancelOrder')->name('post.cancel.order');
    });

    Route::get('/', 'HomeController@index')->name('page.home');

});

