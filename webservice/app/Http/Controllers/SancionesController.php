<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;
 use App\Sancione;
class SancionesController extends Controller
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
        $usuarios=sanciones::all();
        return json_encode($usuarios, JSON_UNESCAPED_UNICODE);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function sanciones($id)
    {
         $respuesta = DB::select(DB::raw("select j.nombre as Jugador, e.nombre as Equipo, s.tiempo as Fechas, s.comentario as Motivo from sanciones as s, jugadores as j , equipos as e where s.jugadorid = j.id and j.equipoid=e.id  and  e.divisionid='$id' order by s.tiempo desc"));
        # return $respuesta->toJson(JSON_UNESCAPED_UNICODE);
        #return response()->json($respuesta,JSON_UNESCAPED_UNICODE);
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
