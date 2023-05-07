<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GenericControler;

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

Route::get('/', [GenericControler::class,'landing']);

Route::get('/generate-token', [GenericControler::class,'generateToken']);


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

    Route::post(
        uri: '/oauth-access-tokens',
        action: [GenericControler::class, 'generateToken']
    )->name('voyager.oauth-access-tokens.store');


});
