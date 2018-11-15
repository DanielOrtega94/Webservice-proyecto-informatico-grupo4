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
Route::get('noticias','NoticiasController@show');
Route::get('imagenes','ImagenesController@show');
Route::get('partidos','PartidoController@show');
Route::get('subscripciones','SubscripcionesController@show');
#Route::get('sanciones','SancionesController@show');

#id que se envia es la division, para todas

#horario de los partidos
Route::get('fechas_partidos/{id}','PartidoController@fechas_partidos');
#tabla goleador
Route::get('tabla_goleador/{id}', 'CampeonatosController@tabla_goleador');
# tabla equipo
Route::get('tabla_equipos/{id}','CampeonatosController@tabla_equipos');
#tabla sanciones
Route::get('tabla_sanciones/{id}','SancionesController@sanciones');
#REglamento
Route::get('reglamento/{id}','CampeonatosController@reglamento');

Route::get('proximos','CampeonatosController@partidos_proximos');

Route::get('login/{id}','UsuariosController@login');


