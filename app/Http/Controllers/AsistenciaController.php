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
            Asistencia::create([
                'asis_idcurso' => $arreglo['asis_idcurso'],
                'asis_idalumno' => $value['asis_idalumno'],
                'asis_fecha' => $arreglo['asis_fecha'],
                'asis_est' => $value['asis_est']
            ]);
            
            $datos = DB::table('alumno')
                    ->join('apoderado','apoderado.apod_id','alumno.alum_apod')
                    ->where('alumno.alum_id','=',$value['asis_idalumno'])->first();
            
            if($value['asis_est'] == 1){

                $alumno = $datos->alum_ape . ', ' . $datos->alum_nom;
                $apoderado = $datos->apod_ape . ', ' . $datos->apod_nom;
                $fecha = date("d/m/Y", strtotime($arreglo['asis_fecha']));
                $asunto = "". $datos->alum_ape . ' ' . $datos->alum_nom . ': TARDANZA ' . $fecha;
                $msg = "Se comunica que el estudiante: " . $alumno .  " tiene tardanza el día " . $fecha;

                $to_name="jad";
                $to_mail= $datos->apod_email;
                $data = array("name"=>$apoderado,"body"=>$msg);
                \Mail::send('mail',$data,function($message) use ($to_name,$to_mail,$asunto){
                    $message->to($to_mail)
                    ->subject($asunto);
                });

            } elseif($value['asis_est'] == 2){

                $alumno = $datos->alum_ape . ', ' . $datos->alum_nom;
                $apoderado = $datos->apod_ape . ', ' . $datos->apod_nom;
                $fecha = date("d/m/Y", strtotime($arreglo['asis_fecha']));
                $asunto = "". $datos->alum_ape . ' ' . $datos->alum_nom . ': FALTA ' . $fecha;
                $msg = "Se comunica que el estudiante: " . $alumno .  " tiene falta el día " . $fecha;

                $to_name="jad";
                $to_mail= $datos->apod_email;
                $data = array("name"=>$apoderado,"body"=>$msg);
                \Mail::send('mail',$data,function($message) use ($to_name,$to_mail,$asunto){
                    $message->to($to_mail)
                    ->subject($asunto);
                });

            }

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
