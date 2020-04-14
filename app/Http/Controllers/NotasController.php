<?php

namespace App\Http\Controllers;

use App\Notas;
use DB;
use Auth;

use Illuminate\Http\Request;

class NotasController extends Controller
{
    
    public function listarBimestres($idcurso){
        return view('notas.bimestres',['idcurso'=>$idcurso]);
    }

    
    public function consultaNotas($idcurso, $nbim){

        if(Auth::user()->hasrole('docen'))
        {
            $alumnos = DB::table('notas')
                ->join('alumno','alumno.alum_id','notas.not_idalumno')
                ->where('notas.not_idcurso','=',$idcurso)
                ->where('notas.not_bimestre','=',$nbim)
                ->orderby('alumno.alum_ape','asc')
                ->get();
            return view ('notas.index',['idcurso'=>$idcurso, 'nbim'=>$nbim, 'alumnos'=>$alumnos]);
        }
        elseif (Auth::user()->hasrole('alum')) {
            
        }
        
    }
    
    public function formNotas($idcurso, $nbim){
        $alumnos = DB::table('alumno_curso')
                ->join('alumno','alumno.alum_id','alumno_curso.alumno_id')
                ->where('curso_id','=',$idcurso)
                ->orderby('alumno.alum_ape','asc')
                ->get();
        return view ('notas.create',['alumnos'=>$alumnos,'idcurso'=>$idcurso, 'nbim'=>$nbim]);
    }
    
    public function store(Request $req)
    {
        $arreglo = $req->all();
        foreach($arreglo['data'] as $key => $value){
            /*echo "Curso: " . $arreglo['not_idcurso'];
            echo "Bimestre: " . $arreglo['not_bimestre'];
            echo "Alumno : " . $value['not_idalumno'] ;
            echo " N1: " . $value['not_n1'];
            echo " N2: " . $value['not_n2'];
            echo " N3: " . $value['not_n3'];
            echo " Promedio: " . $value['not_promedio'];
            echo "<br>";*/
            Notas::create([
                'not_idcurso' => $arreglo['not_idcurso'],
                'not_idalumno' => $value['not_idalumno'],
                'not_n1' => $value['not_n1'],
                'not_n2' => $value['not_n2'],
                'not_n3' => $value['not_n3'],
                'not_promedio' => $value['not_promedio'],
                'not_bimestre' => $arreglo['not_bimestre']
            ]);
        }
        return redirect()->route('notas.show', ['idcurso' => $req->not_idcurso, 'nbim' => $req->not_bimestre])->with('status', 'Notas registradas correctamente!');
    }
    
    
}
