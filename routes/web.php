<?php

use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\GroupController;

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

Route::get('/clear', function() {
    // $exitCode = Artisan::call('route:cache');
    $exitCode = Artisan::call('config:cache');
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('view:clear');
    return 'All routes cache has just been removed';
});

#Group
Route::prefix('group')->group(function () {
    Route::get('/' ,  [GroupController::class, 'showGroups']);
    Route::get('/create', [GroupController::class,'createGroup'])->name('group.create');
    Route::post('/create', [GroupController::class,'saveGroup']);
    Route::get('/edit/{id}', [GroupController::class,'getGroup'])->name('group.edit');
    Route::put('/edit/{id}', [GroupController::class,'saveGroup'])->name('group.update');
    Route::get('/delete/{id}', [GroupController::class,'deleteGroup'])->name('group.delete');
});
#endGroup