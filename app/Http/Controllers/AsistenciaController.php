<?php

namespace App\Http\Controllers;

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
        return view('asistencia.show',['idcurso'=>$id]);
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
