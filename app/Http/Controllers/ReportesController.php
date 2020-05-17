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



    //ADMIN----------------------
    public function showVentanaReporte()
    {
        return view ('reportes.administrador.asistencia');
    } 

    public function recibirReporteAsis(Request $req)
    {
       $data = $req->all();
        $query = DB::table('asistencia')
                ->join('curso','curso.curs_id','asistencia.asis_idcurso')
                ->join('alumno','alumno.alum_id','asistencia.asis_idalumno')
                ->where('curso.curs_idasig','=',$data['curs_idasig'])
                ->where('asistencia.asis_fecha','=',$data['asis_fecha'])
                ->get();
        $contador = 0;
        foreach ($query as $q) {
            //echo $q->asis_id . " " . $q->alum_ape. " " . $q->alum_nom. " ". $q->asis_est . "<br>"; 
            if($q->asis_est == 0){
                $contador++;
            }
        }    
        $indicador_tasa_asis = ($contador/50)*100;
        //echo $indicador_tasa_asis."%";
        $pdf = PDF::loadView('pdf.repasisdiaro',['data'=>$query, 'ind'=>$indicador_tasa_asis]);
        return $pdf->download('Reporte:asistencia - Diario.pdf');     

    }



}
