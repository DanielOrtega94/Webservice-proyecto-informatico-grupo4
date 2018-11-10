<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;
 use App\Campeonato;
class CampeonatosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        $usuarios=campeonatos::all();
        return response()->json($usuarios);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function tabla_goleador($id)
    {
        $respuesta = DB::select(DB::raw("
        select e.nombre as Equipo ,j.nombre as Jugador, SUM(pj.puntos) AS Goles from partido_jugadors as pj , partidos as p, divisiones as d , jugadores as j, equipos as e where pj.partidoid = p.id and d.id= p.divisionid and pj.jugadorid = j.id and e.id = j.equipoid and d.id = '$id' GROUP by e.nombre,j.nombre ORDER by sum(pj.puntos) desc"));
        return json_encode($respuesta, JSON_UNESCAPED_UNICODE);
    }

    public function tabla_equipos($division){

      $respuesta = DB::select(DB::raw(" select e.divisionid ,e.id, pj.Equipo as Equipo, pj.PJ ,pg.PG ,  COALESCE(pp.PP,0) as PP, gt.GF,gt.GC, gt.GF-gt.GC as DIFGOLES
from equipos as e, partidos_jugados as pj, goles_totales as gt, partidos_ganados as pg LEFT JOIN partidos_perdidos as pp
on pg.id = pp.id where e.id = pj.id and  pj.id = pg.id and gt.id =pg.id and  e.id = '$division'"));
        return json_encode($respuesta, JSON_UNESCAPED_UNICODE);






    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
