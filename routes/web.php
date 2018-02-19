<?php

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
Route::group(['namespace' => 'Auth'], function () {
    Route::group(['middleware'  => 'guest'], function () {
        Route::get('/register', [
            'uses'  => 'RegisterController@getRegister',
            'as'    => 'register'
        ]);

        Route::post('/register', [
            'uses'  => 'RegisterController@postRegister',
            'as'    => 'register'
        ]);
        Route::get('/login', [
            'uses'  => 'LoginController@getLogin',
            'as'    => 'login'
        ]);

        Route::post('/login', [
            'uses'  => 'LoginController@postLogin',
            'as'    => 'login'
        ]);

        Route::get('/activate/{email}/{token}', 'EmailActivationController@activateUser');

    });
    Route::post('/logout', [
        'uses'   => 'LoginController@logout',
        'as'     => 'logout'
    ]);

//    Route::group(['middleware' => 'admin'], function () {
//        Route::get('/admin', function () {
//            return view('admin.dashboard');
//        })->name('admin.dashboard');
//    });
});

Route::get('/roles', function () {
//   $role = Sentinel::getRoleRepository()->createModel()->create([
//      'name'    => 'Normal User',
//      'slug'    => 'user',
//       'permissions' => [
//           'user.show' => true,
//           'user.edit' => false,
//           'user.delete' => false,
//           'user.create' => false,
//           'user.approve' => false,
//       ]
//   ]);

    // add permission inline into the field in users database
//    $user = Sentinel::findById(10);
//
//    $user->addPermission('user.create');
//    $user->addPermission('user.update', false);
//    $user->save();
});

Route::get('/home', function () {
    return view('home');
})->name('home');

Route::get('/user/dashboard', function () {
    return view('user.dashboard');
})->name('user.dashboard');

Route::get('/admin/dashboard', function () {
    return view('admin.dashboard');
})->name('admin.dashboard')->middleware('admin');


