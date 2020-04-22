<?php

namespace App\Http\Controllers;


use App\ExamenLinea;
use Illuminate\Http\Request;
use Auth;
use DB;

class ExamenLineaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function listarExamenesPorCurso($idcurso)
    {
        $data = DB::table('examen_linea')
                    ->join('trabajador','trabajador.trab_dni','examen_linea.exa_iddocen')
                    ->where('exa_idcurso','=',$idcurso)
                    ->get();
        return view('examen.listar',['idcurso'=>$idcurso,'data'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function crear($idcurso)
    {
        return view('examen.create',['idcurso'=>$idcurso]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        ExamenLinea::create([
            'exa_idcurso' => $data['exa_idcurso'],
            'exa_titulo' => $data['exa_titulo'],
            'exa_link' => $data['exa_link'],
            'exa_iddocen' => Auth::user()->usuario
        ]);
        return redirect()->route('curso.show',array('curso' => $data['exa_idcurso']))->with('status', 'Exámen agregado correctamente!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ExamenLinea  $examenLinea
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $exa = ExamenLinea::find($id);
        return view('examen.show',['exa'=>$exa]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ExamenLinea  $examenLinea
     * @return \Illuminate\Http\Response
     */
    public function edit(ExamenLinea $examenLinea)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ExamenLinea  $examenLinea
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ExamenLinea $examenLinea)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ExamenLinea  $examenLinea
     * @return \Illuminate\Http\Response
     */
    public function destroy(ExamenLinea $examenLinea)
    {
        //
    }
}
