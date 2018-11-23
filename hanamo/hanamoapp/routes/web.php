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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('product_group', 'ProductGroups@viewProductGroups');
Route::resource('product_groups','ProductGroups');

Route::get('product', 'Products@viewProducts');
Route::resource('products','Products');

Route::get('inventory', 'Inventory@viewInventory');
Route::resource('inventories','Inventory');

Route::get('importExport', 'LaravelExcel@importExport');
Route::get('downloadExcel/{type}', 'LaravelExcel@downloadExcel');
Route::post('importExcel', 'LaravelExcel@importExcel');
