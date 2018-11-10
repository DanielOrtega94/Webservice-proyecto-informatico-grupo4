<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Partido;
use App\Divisione;
use App\Campeonato;
use DB;
class PartidoController extends Controller
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
        $usuarios=Partido::all();
        return json_encode($respuesta, JSON_UNESCAPED_UNICODE);
    }

  //    public function futbol()
  //  {
     
  //      $futbol=Divisione::where('deporteid','=',1)->get();
 //      foreach ($futbol as $key => $value) {
  //          $partidos=Partido::where('divisionid','=',$key)->get();
            #array_push($respuesta,$partidos);
  //     }

  //      return json_encode($respuesta, JSON_UNESCAPED_UNICODE);
 //   }


      public function fechas_partidos($id)
    {
        $respuesta = DB::select(DB::raw("SELECT deporteid,d.id,d.nombre as division,c.nombre as campeonato,ano,semestre,fecha_inicio ,fecha_termino,lugarid, equipo_1,equipo_2,fecha, hora,ganador,empate
FROM campeonatos as c ,divisiones as d, partidos as p 
WHERE c.divisionid = d.id and p.divisionid = d.id and c.divisionid = '$id'"));

        return json_encode($respuesta, JSON_UNESCAPED_UNICODE);
    }




    //  public function basket()
   // {
//$respuesta = DB::select(DB::raw('SELECT deporteid,d.id,d.nombre as division,c.nombre as campeonato,ano,semestre,fecha_inicio ,fecha_termino,lugarid,equipo_1,equipo_2,fecha, hora,ganador,empate FROM campeonatos as c ,divisiones as d, partidos as p  WHERE c.divisionid = d.id and p.divisionid = d.id and d.deporteid = 3'));
        // return json_encode($respuesta, JSON_UNESCAPED_UNICODE);
        
    // }




     public function basket_campeonato()
    {
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
