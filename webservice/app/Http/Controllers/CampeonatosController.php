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
        $usuarios=Campeonato::all();
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
        select e.nombre as equipo ,j.nombre as jugador, SUM(pj.puntos) as goles from partido_jugadors as pj , partidos as p, divisiones as d , jugadores as j, equipos as e where pj.partidoid = p.id and d.id= p.divisionid and pj.jugadorid = j.id and e.id = j.equipoid and d.id = '$id' GROUP by e.nombre,j.nombre ORDER by sum(pj.puntos) desc"));
        return json_encode($respuesta, JSON_UNESCAPED_UNICODE);
    }

    public function tabla_equipos($division){

      $respuesta = DB::select(DB::raw(" select d.nombre ,e.id, PJ.Equipo as equipo, PJ.PJ as pj  ,PG.PG  as pg ,  COALESCE(PP.PP,0) as pp, GT.GF as gf ,GT.GC as gc , GT.GF-GT.GC as difgoles
from equipos as e, partidos_jugados as PJ, goles_totales as GT, divisiones as d, partidos_ganados as PG LEFT JOIN partidos_perdidos as PP
on PG.id = PP.id
where e.id = PJ.id and  PJ.id = PG.id and GT.id =PG.id and e.divisionid = d.id and e.divisionid = '$division'"));
        return json_encode($respuesta, JSON_UNESCAPED_UNICODE);


    }
    public function reglamento($deporte){

        $respuesta = DB::select(DB::raw("select d.nombre,c.reglamento from campeonatos as c, divisiones as d where d.id =c.divisionid  and d.deporteid = '$deporte'"));
        return json_encode($respuesta, JSON_UNESCAPED_UNICODE);

    }

    public function partidos_proximos(){
    $respuesta = DB::select(DB::raw("select * from proximos"));
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
