<?php

namespace App\Http\Controllers;

use Auth;

use DB;
use App\Asistencia;
use Illuminate\Http\Request;

class AsistenciaController extends Controller
{
    public function index()
    {
        //
    }

    public function registrar($id)
    {
        return view('asistencia.create',['idcurso'=>$id]);
    }

    public function store(Request $request)
    {
        $arreglo = $request->all();
        foreach ($arreglo['data'] as $key => $value) {
            /*echo "Alumno: ";
            print_r($value['asis_idalumno']);
            echo " Estado: ";
            print_r($value['asis_est']);
            echo " Fecha: ";
            echo $arreglo['asis_fecha'];
            echo " Curso: ";
            echo $arreglo['asis_idcurso'];
            echo "<br>";*/
            Asistencia::create([
                'asis_idcurso' => $arreglo['asis_idcurso'],
                'asis_idalumno' => $value['asis_idalumno'],
                'asis_fecha' => $arreglo['asis_fecha'],
                'asis_est' => $value['asis_est']
            ]);
        }
        return redirect()->route('asistencia.show',[$arreglo['asis_idcurso']])->with('status', 'Registro correctamente!');
    }

    public function show($id)
    {
        if(Auth::user()->hasrole('docen'))
        {

            return view('asistencia.show',['idcurso'=>$id]);

        } elseif (Auth::user()->hasrole('alum')) {
            $trab_data = DB::table('alumno')
                            ->where('alumno.alum_user','=',Auth::user()->usuario)->first();
            $asis = DB::table('asistencia')
                    ->where([['asistencia.asis_idcurso','=',$id],['asistencia.asis_idalumno','=',$trab_data->alum_id]])
                    ->get();
            return view('asistencia.alumno.show',['asis'=>$asis]);

        }
    }

    public function edit(Asistencia $asistencia)
    {
        //
    }

    public function update(Request $request, Asistencia $asistencia)
    {
        //
    }

    public function destroy(Asistencia $asistencia)
    {
        //
    }
}
