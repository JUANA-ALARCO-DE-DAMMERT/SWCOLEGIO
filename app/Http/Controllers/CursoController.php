<?php

namespace App\Http\Controllers;

use App\Curso;
use DB;
use Illuminate\Http\Request;

class CursoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::table('curso')
                    ->join('trabajador','trabajador.trab_id','curso.curs_iddocen')
                    ->join('asignatura','asignatura.asig_id','curso.curs_idasig')
                    ->get();
        return view('curso.index',['cursos'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = DB::table('asignatura')->get();
        return view('curso.create',['asignaturas'=>$data]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'curs_idasig' => 'required',
            'curs_iddocen' => 'required',
            'curs_grado' => 'required',
            'curs_año' => 'required'
        ]);
        $data = $request->all();
        $curso = Curso::create($data);
        return redirect()->route('curso.index')->with('status', 'Curso agregado correctamente!');        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Curso  $curso
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // View para docentes
        $curso = DB::table('curso')
                    ->where('curso.curs_id','=',$id)
                    ->first();
        return view('curso.show',['curso'=>$curso]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Curso  $curso
     * @return \Illuminate\Http\Response
     */
    public function edit(Curso $curso)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Curso  $curso
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Curso $curso)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Curso  $curso
     * @return \Illuminate\Http\Response
     */
    public function destroy(Curso $curso)
    {
        //
    }

    public function matricula($id){
        $curso = Curso::find($id);
        $data = DB::select('call matricularAlumnos(?, ?)',array($id, $curso->curs_grado));
        return view ('curso.matricula',['alumnos'=>$data,'curso'=>$curso]);
    }

}
