<?php

use Illuminate\Http\Request;


//Acara
Route::apiResource('acara', 'AcaraController');

// New Masjid
Route::apiResource('news_masjid', 'NewsMasjidController');

//agenda dkm
Route::apiResource('agenda_dkm', 'AgendaDkmController');

//agenda formal'in
Route::apiResource('agenda_formalin', 'AgendaFormalinController');

//laporan keuangan DKM
Route::apiResource('dkm_keuangan', 'KeuanganDkamController');

Route::apiResource('agendas', 'AgendaController');



Route::group(['middleware'=>'api'],function(){

	Route::post('register', "AuthController@register");

	Route::post('signin', "AuthController@signin");

	

		

		
	Route::group(['middleware'=>['jwt.auth']],function(){

		//news masjid
		//
		//buat post baru
		// Route::post('/news_masjid', 'NewsMasjidController@store');

		//ngembil data acara
		// Route::get('/news_masjid', 'NewsMasjidController@index');

		//edit data news
		// Route::patch('/news_masjid/{news_masjid}', 'NewsMasjidController@update');

		//delete news berdasarkan id
		// Route::delete('/news_masjid/{news_masjid}', 'NewsMasjidController@destroy');

		//ngambil data acara berdasarkan id
		// Route::get('/news_masjid/{news_masjid}', 'NewsMasjidController@show');



		//agenda dkm


		//buat post agenda baru
		//Route::post('/agenda_dkm', 'AgendaDkmController@store');

		//ngambil data agenda
		//Route::get('/agenda_dkm', 'AgendaDkmController@index');

		//edit data agenda
		//Route::patch('/agenda_dkm/{agenda_dkm}', 'AgendaDkmController@update');

		//delete data agenda berdasrkan agenda_dkm
		//Route::delete('/agenda_dkm/{agenda_dkm}', 'AgendaDkmController@destroy');

		//ngambil data agenda berdasarkan agenda_dkm
		//Route::get('/agenda_dkm/{agenda_dkm}', 'AgendaDkmController@show');



		//agenda formal-in

		//buat agenda baru
		// Route::post('/agenda_formalin', 'AgendaFormalinController@store');

		// //ngambil data agenda
		// Route::get('/agenda_formalin', 'AgendaFormalinController@index');

		// //edit data agenda
		// Route::put('/agenda_formalin/{agenda_formalin}', 'AgendaFormalinController@update');

		// //delete data agenda formalin
		// Route::delete('/agenda_formalin/{agenda_formalin}', 'AgendaFormalinController@destroy');

		// //almbil data berdasarkan id
		// Route::get('/agenda_formalin/{agenda_formalin}', 'AgendaFormalinController@show');



		//new laporan keuangan DKM
		// Route::post('/agendas', 'AgendaController@store');

		// Route::get('/agendas', 'AgendaController@index');

		// Route::get('/agendas/{agendas}', 'AgendaController@show');

		// Route::patch('/agendas/{agendas}', 'AgendaController@update');

		// Route::delete('/agendas/{agendas}', 'AgendaController@destroy');

		

	});

});

