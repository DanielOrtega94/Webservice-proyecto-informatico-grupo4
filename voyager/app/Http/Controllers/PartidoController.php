<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
 use App\partidos;
 use App\divisiones;
  use App\campeonatos;
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
        $usuarios=partidos::all();
        return response()->json($usuarios);
    }

      public function futbol()
    {
        #$respuesta= [];
        $futbol=divisiones::where('deporteid','=',1)->get();
       foreach ($futbol as $key => $value) {
            $partidos=partidos::where('divisionid','=',$key)->get();
            #array_push($respuesta,$partidos);
       }

        return response()->json($partidos);
    }


      public function futbol_campeonato()
    {
        $respuesta =[ ];
        $futbol=divisiones::where('deporteid','=',1)->get();

       foreach ($futbol as $key => $value) {
            $campeonatos = campeonatos::where('divisionid','=',$key)->get();
            $partidos=partidos::where('divisionid','=',$key)->get();
#concat, merge, union
            $merged = $partidos->union($campeonatos["nombre"])->concat($campeonatos["ano"])->concat($campeonatos["semestre"])->concat($campeonatos["id"]);
            #array_push($respuesta,[$partidos,$campeonatos]);
       }

        #return response()->json($respuesta );
         return response()->json($merged );
    }




      public function basket()
    {
        $futbol=divisiones::where('deporteid','=',3)->get();

       foreach ($futbol as $key => $value) {
            $partidos=partidos::where('divisionid','=',$key)->get();
       }
     
        return response()->json($partidos);
        
    }


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
