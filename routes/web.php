<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\TypeaheadController;
use App\Http\Controllers\GroupController;
use App\Http\Controllers\GoldRatesController;
use App\Http\Controllers\ItemsController;
use App\Http\Controllers\SchemeController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\GoldLoanController;

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
#Marketing
Route::get('accordion',function(){
    return view('accordion-arrows');
});

#Marketing
Route::get('forms',function(){
    return view('form-inputs');
});

#Marketing
Route::get('wizard',function(){
    return view('wizard');
});

Route::get('/clear', function() {
    // $exitCode = Artisan::call('route:cache');
    $exitCode = Artisan::call('config:cache');
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('view:clear');
    return 'All routes cache has just been removed';
});

Route::get('/', [AuthController::class, 'index'])->name('login');
Route::post('post-login', [AuthController::class, 'postLogin'])->name('login.post'); 
Route::get('registration', [AuthController::class, 'registration'])->name('register');
Route::post('post-registration', [AuthController::class, 'postRegistration'])->name('register.post'); 
Route::get('logout', [AuthController::class, 'logout'])->name('logout');

Route::group(['middleware' => ['auth']], function() {

    Route::get('dashboard', [AuthController::class, 'dashboard'])->middleware('auth');
    Route::get('/autocomplete-search', [TypeaheadController::class,'autocompleteSearch']);
    Route::get('/item-autocomplete-search', [TypeaheadController::class,'autocompleteSearchItem']);
    Route::get('/cuscode-autocomplete-search', [TypeaheadController::class,'autocompleteSearchCusCode']);
    Route::get('/schemecode-autocomplete-search', [TypeaheadController::class,'autocompleteSearchSchemeCode']);
    Route::post('/group-autocomplete-search', [TypeaheadController::class,'autocompleteSearchGroup']);
    Route::post('/item-autocomplete-search', [TypeaheadController::class,'autocompleteSearchItemNames']);
    Route::post('/get-purity', [TypeaheadController::class,'getItemPurity']);


    #Group
    Route::prefix('group')->group(function () {
        Route::get('/' ,  [GroupController::class, 'showGroups'])->name('group.list');
        Route::get('/create', [GroupController::class,'createGroup'])->name('group.create');
        Route::post('/create', [GroupController::class,'saveGroup']);
        Route::get('/edit/{id}', [GroupController::class,'getGroup'])->name('group.edit');
        Route::put('/edit/{id}', [GroupController::class,'saveGroup'])->name('group.update');
        Route::get('/delete/{id}', [GroupController::class,'deleteGroup'])->name('group.delete');
        Route::post('/change/{id}/{status}', [GroupController::class,'changeStatus']);
    });
    #endGroup

    #GoldRates
    Route::prefix('goldrate')->group(function () {
        Route::get('/' ,  [GoldRatesController::class, 'showGoldRates'])->name('goldrate.list');
        Route::get('/create', [GoldRatesController::class,'createGoldRate'])->name('goldrate.create');
        Route::post('/create', [GoldRatesController::class,'saveGoldRate']);
        Route::get('/edit/{id}', [GoldRatesController::class,'getGoldRate'])->name('goldrate.edit');
        Route::put('/edit/{id}', [GoldRatesController::class,'saveGoldRate'])->name('goldrate.update');
        Route::get('/delete/{id}', [GoldRatesController::class,'deleteGoldRate'])->name('goldrate.delete');
        Route::post('/change/{id}/{status}', [GoldRatesController::class,'changeStatus']);
    });
    #endGoldRates

    #Item
    Route::prefix('item')->group(function () {
        Route::get('/' ,  [ItemsController::class, 'showItems'])->name('item.list');
        Route::get('/create', [ItemsController::class,'createItem'])->name('item.create');
        Route::post('/create', [ItemsController::class,'saveItem']);
        Route::get('/edit/{id}', [ItemsController::class,'getItem'])->name('item.edit');
        Route::put('/edit/{id}', [ItemsController::class,'saveItem'])->name('item.update');
        Route::get('/delete/{id}', [ItemsController::class,'deleteItem'])->name('item.delete');
        Route::post('/change/{id}/{status}', [ItemsController::class,'changeStatus']);
    });
    #endItem

    #Scheme
    Route::prefix('scheme')->group(function () {
        Route::get('/' ,  [SchemeController::class, 'showSchemes'])->name('scheme.list');
        Route::get('/create', [SchemeController::class,'createScheme'])->name('scheme.create');
        Route::post('/create', [SchemeController::class,'saveScheme']);
        Route::get('/edit/{id}', [SchemeController::class,'getScheme'])->name('scheme.edit');
        Route::put('/edit/{id}', [SchemeController::class,'saveScheme'])->name('scheme.update');
        Route::get('/delete/{id}', [SchemeController::class,'deleteScheme'])->name('scheme.delete');
        Route::post('/change/{id}/{status}', [SchemeController::class,'changeStatus']);
    });
    #endScheme

    #Customer
    Route::prefix('customer')->group(function () {
        Route::get('/' ,  [CustomerController::class, 'showCustomers'])->name('customer.list');
        Route::get('/create', [CustomerController::class,'createCustomer'])->name('customer.create');
        Route::post('/create', [CustomerController::class,'saveCustomer']);
        Route::get('/edit/{id}', [CustomerController::class,'getCustomer'])->name('customer.edit');
        Route::put('/edit/{id}', [CustomerController::class,'saveCustomer'])->name('customer.update');
        Route::get('/delete/{id}', [CustomerController::class,'deleteCustomer'])->name('customer.delete');
    });
    #endCustomer

    #GoldLoan
    Route::prefix('goldloan')->group(function () {
        Route::get('/' ,  [GoldLoanController::class, 'showGoldLoans'])->name('goldloan.list');
        Route::get('/create', [GoldLoanController::class,'createGoldLoan'])->name('goldloan.create');
        Route::post('/create', [GoldLoanController::class,'saveGoldLoan']);
        Route::get('/edit/{id}', [GoldLoanController::class,'getGoldLoan'])->name('goldloan.edit');
        Route::put('/edit/{id}', [GoldLoanController::class,'saveGoldLoan'])->name('goldloan.update');
        Route::get('/delete/{id}', [GoldLoanController::class,'deleteGoldLoan'])->name('goldloan.delete');
    });
    #endGoldLoan
});
