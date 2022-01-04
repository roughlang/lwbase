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

Route::get('/', function () { return view('index'); });

/* utility */
if (env('APP_ENV') == 'local' || env('APP_ENV') == 'develop') {
  Route::get('/phpinfo', function () { return view('phpinfo'); });
}

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

/**
 * test
 */
Route::get('/test/vueajax', [App\Http\Controllers\VueajaxController::class, 'index'])->name('vueajax');

/**
 * vue
 */
Route::get('/vue', function () { return view('vue/index'); });
Route::get('/vue/ajax_get', function () { return view('vue/ajax_get'); });

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

