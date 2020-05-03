<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use PDF;

class ReportesController extends Controller
{
    public function ultimaConexion($idcurso)
    {
    	$data = DB::table('alumno_curso')
                    ->join('alumno','alumno.alum_id','alumno_curso.alumno_id')
                    ->join('users','users.usuario','alumno.alum_user')
                    ->where('alumno_curso.curso_id','=',$idcurso)
                    ->orderBy('alum_ape','asc')
                    ->get();
        $pdf = PDF::loadView('pdf.lastconection',['data'=>$data]);
        return $pdf->download('Reporte - Última Conexión de Alumnos.pdf');
    }

    public function listarReportes($idcurso)
    {
        return view ('reportes.index',['idcurso'=>$idcurso]);
    }

    public function asistenciadocen($idcurso)
    {
        $data = DB::table('asistencia')
                    ->join('curso','curso.curs_id','asistencia.asis_idcurso')
                    ->join('asignatura','asignatura.asig_id','curso.curs_idasig')
                    ->join('alumno','alumno.alum_id','asistencia.asis_idalumno')
                    ->where('curs_id','=',$idcurso)
                    ->orderBy('asis_fecha','asc')
                    ->get();
        $pdf = PDF::loadView('pdf.asistenciadocen',['data'=>$data]);
        return $pdf->download('prueba.pdf');
    }

}
