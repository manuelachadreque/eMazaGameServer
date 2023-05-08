<?php

use App\Http\Controllers\QuestionController;
use App\Http\Controllers\SubjectController;
use Illuminate\Http\Request;
use Illuminate\Routing\Route as RoutingRoute;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;


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

Route::group(['middleware' => 'auth:api'], function () {
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    Route::apiResources([
        'subjects'=> SubjectController::class,
        'questions'=>QuestionController::class,
    ]);
});



// This route does not require authentication
Route::get('/public', function () {
    return "This route does not require authentication";
});
