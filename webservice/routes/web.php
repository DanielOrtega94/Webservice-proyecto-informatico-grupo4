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


Route::get('usuarios','UsuariosController@show');


Route::get('arbitrajes','ArbitrajesController@show');
Route::get('arbitros','ArbitrosController@show');
Route::get('campeonatos','CampeonatosController@show');
Route::get('deportes','DeportesController@show');
Route::get('divisiones','DivisionesController@show');
Route::get('equipos','EquiposController@show');
Route::get('jugadores','JugadoresController@show');
Route::get('lugares','LugaresController@show');
Route::get('partido_jugador','Partido_JugadorsController@show');
Route::get('sanciones','SancionesController@show');
Route::get('usuarios','UsuariosController@show');
