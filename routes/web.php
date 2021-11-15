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
Route::get('/project/detials/{id}','ProjectController@get_detials')->name('get.frontend.project.index');
// authunication ( login or admin )
//Route::get('/login','UserAuthController@login')->name('get.userAuth.login');
//Route::post('/login','UserAuthController@do_login')->name('post.userAuth.do_login');


//  admin is auth  ( function adminAuth() => this function return object of admin if he is authunicated ) 
//Route::group(['middleware'=>'admin:admin'],function()
//{
		//  base route after login
		Route::get('/','HomeController@index')->name('get.home.index');

		// logout
		Route::get('/logout','UserAuthController@logout')->name('get.userAuth.logout');

		// add Offer Order
		Route::group(['prefix'=>'offer-orders'],function()
		{
			Route::get('/create','OfferOrderController@create')->name('get.OfferOrder.create'); 
			Route::post('/store','OfferOrderController@store')->name('post.OfferOrder.store'); 
				// show all data an data table 
			Route::get('/all','OfferOrderController@index')->name('get.offerOrder.index'); 
			
			// show view form of item 
			Route::get('/view/{id}','OfferOrderController@view')->name('get.offerOrder.view'); 

			// uncheck data of specific item
			Route::get('/uncheck/{id}','OfferOrderController@uncheck')->name('get.offerOrder.uncheck')->where('id', '[0-9]+');
			 
			// check data of specific item
			Route::get('/check/{id}','OfferOrderController@check')->name('get.offerOrder.check')->where('id', '[0-9]+');

						// show edit form of item 
			Route::get('/edit/{id}','OfferOrderController@edit')->name('get.offerOrder.edit'); 
			// update data of specific item 
			Route::put('/update','OfferOrderController@update')->name('put.offerOrder.update'); 
			// delete data of specific item
			Route::get('/delete/{id}','OfferOrderController@delete')->name('get.offerOrder.delete')->where('id', '[0-9]+');
			
	//	});
		
		// get max and min prices of projects in region
		Route::get('/prices-in-region', 'MaxMinPriceInRegion@index')->name('get.pricesInRegion'); 


		Route::group(['prefix'=>'user', 'middleware'=>'is_admin'],function()
		{
			
			// show all data an data table 
			Route::get('/all','UserController@index')->name('get.user.index'); 
			// store data of item 
			Route::post('/store','UserController@store')->name('post.user.store'); 
			// update data of specific item 
			Route::put('/update','UserController@update')->name('put.user.update'); 
			// delete data of specific item
			Route::get('/delete/{id}','UserController@delete')->name('get.user.delete')->where('id', '[0-9]+');
			// delete multi  item
			Route::post('/delete/multi','UserController@deleteMulti')->name('post.user.deleteMulti'); 
			
		});


		Route::group(['prefix'=>'profile', 'middleware'=>'is_editor'],function()
		{
			
			// show edit form of item 
			Route::get('/edit','ProfileController@edit')->name('get.profile.edit'); 
		
			// update item 
			Route::put('/update','ProfileController@update')->name('put.profile.update'); 

		});


		Route::group(['prefix'=>'cities', 'middleware'=>'is_editor'],function()
		{
			
			// show all data an data table 
			Route::get('/all','CityController@index')->name('get.city.index'); 
			// store data of item 
			Route::post('/store','CityController@store')->name('post.city.store'); 
			// update data of specific item 
			Route::put('/update','CityController@update')->name('put.city.update'); 
			// delete data of specific item
			Route::get('/delete/{id}','CityController@delete')->name('get.city.delete')->where('id', '[0-9]+');
			
		});

		Route::group(['prefix'=>'regions', 'middleware'=>'is_editor'],function()
		{
			
			// show all data an data table 
			Route::get('/all','RegionController@index')->name('get.region.index'); 
			// store data of item 
			Route::post('/store','RegionController@store')->name('post.region.store'); 
			// update data of specific item 
			Route::put('/update','RegionController@update')->name('put.region.update'); 
			// delete data of specific item
			Route::get('/delete/{id}','RegionController@delete')->name('get.region.delete')->where('id', '[0-9]+');

		});


		Route::group(['prefix'=>'number_of_rooms', 'middleware'=>'is_editor'],function()
		{
			
			// show all data an data table 
			Route::get('/all','NumberOfRoomController@index')->name('get.numberOfRooms.index'); 
			// store data of item 
			Route::post('/store','NumberOfRoomController@store')->name('post.numberOfRooms.store'); 
			// update data of specific item 
			Route::put('/update','NumberOfRoomController@update')->name('put.numberOfRooms.update'); 
			// delete data of specific item
			Route::get('/delete/{id}','NumberOfRoomController@delete')->name('get.numberOfRooms.delete')->where('id', '[0-9]+');
			
		});


		Route::group(['prefix'=>'projects', 'middleware'=>'is_editor'],function()
		{
			
			// show all data an data table 
			Route::get('/all','ProjectController@index')->name('get.project.index'); 
			// show create form of item 
			Route::get('/create','ProjectController@create')->name('get.project.create'); 
			// store data of item 
			Route::post('/store','ProjectController@store')->name('post.project.store'); 
			// show edit form of item 
			Route::get('/edit/{id}','ProjectController@edit')->name('get.project.edit'); 
			// update data of specific item 
			Route::post('/update','ProjectController@update')->name('post.project.update'); 

						Route::get('/edit_23/{id}','testController@edit_23')->name('get.project.edit_23'); 
			Route::post('/update_23','testController@update_23')->name('post.project.update_23'); 
			// delete data of specific item
			Route::get('/delete/{id}','ProjectController@delete')->name('get.project.delete')->where('id', '[0-9]+');

			
		});

	Route::group(['prefix'=>'search-using-map', 'middleware'=>'is_editor'],function()
		{

			Route::get('/','PropOnMapController@index')->name('get.PropOnMap.index'); 

	});



		Route::get('image/save/{id}',[
    'as' => 'image.download', 'uses' => 'ProjectController@downloadImage']);
});



View::composer(['*'] ,function($view){
    $usd_curr=AmrShawky\LaravelCurrency\Facade\Currency::convert()->from('TRY')->to('USD')->get();
    $tr_curr=AmrShawky\LaravelCurrency\Facade\Currency::convert()->from('USD')->to('TRY')->get();
    
    $view->with(['usd_curr'=>$usd_curr , 'tr_curr'=>$tr_curr ]);
}
);