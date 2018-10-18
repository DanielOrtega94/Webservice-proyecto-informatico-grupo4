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


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('usuarios','UsuariosController@show');
Route::get('arbitrajes','ArbitrajesController@show');
#Route::get('arbitros','ArbitrosController@show');
Route::get('campeonatos','CampeonatosController@show');
Route::get('deportes','DeportesController@show');
#Route::get('divisiones','DivisionesController@show');
Route::get('equipos','EquiposController@show');
#Route::get('jugadores','JugadoresController@show');
Route::get('lugares','LugaresController@show');
Route::get('partido_jugador','Partido_JugadorsController@show');
#Route::get('sanciones','SancionesController@show');
Route::get('noticias','NoticiasController@show');
#Route::get('imagenes','ImagenesController@show');
Route::get('partidos','PartidoController@show');
#Route::get('subscripciones','SubscripcionesController@show');
#Route::get('futbol','PartidoController@futbol');
#Route::get('basket','PartidoController@basket');
#Route::get('futbol_campeonato','PartidoController@futbol_campeonato');
#Route::get('basket_campeonato','PartidoController@basket_campeonato');




