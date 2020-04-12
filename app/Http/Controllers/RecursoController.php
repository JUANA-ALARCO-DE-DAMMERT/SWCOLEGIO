<?php

namespace App\Http\Controllers;
use Auth;
use DB;
use App\Recurso;
use Illuminate\Http\Request;

class RecursoController extends Controller
{
    
    public function listarBimestres($idcurso){
        return view('recursos.bimestres',['idcurso'=>$idcurso]);
    }

    public function showBimestre($idcurso, $nbim){
        $rol;
        if(Auth::user()->hasrole('docen'))
        {
            $rol = 3;
            $files = DB::table('recurso')
                    ->where('rec_curso','=',$idcurso)
                    ->where('rec_bimestre','=',$nbim)
                    ->get();
        } elseif(Auth::user()->hasrole('alum')){
            $rol = 4;
            $files = DB::table('recurso')
                    ->where('rec_curso','=',$idcurso)
                    ->where('rec_bimestre','=',$nbim)
                    ->where('rec_rol','=','3')
                    ->orWhere('rec_curso','=',$idcurso)
                    ->where('rec_bimestre','=',$nbim)
                    ->where('rec_dni','=',Auth::user()->usuario)
                    ->get();
        }
        return view ('recursos.showfiles',['idcurso'=>$idcurso,'nbim'=>$nbim,'files'=>$files]);
    }

    public function upload(Request $req){
        // Cargamos el archivo en el server
        $file = $req->file('rec_archivo');
        $filename = time() . '_' . $file->getClientOriginalName();
        $file->storeAs('cursos/'.$req->rec_curso, $filename);

        // Creamos el objeto en la base de datos
        $rec_rol;
        if(Auth::user()->hasrole('docen'))
        {
            $rec_rol = 3;
        } elseif(Auth::user()->hasrole('alum')){
            $rec_rol = 4;
        }
        $data = $req->all();
        $obj = Recurso::create([
            'rec_curso' => $data['rec_curso'],
            'rec_bimestre' => $data['rec_bimestre'],
            'rec_archivo' => $filename,
            'rec_dni' => Auth::user()->usuario,
            'rec_rol' => $rec_rol
        ]);

        // Redireccionamos
        return redirect()->route('recursos.show', ['idcurso' => $req->rec_curso, 'nbim' => $req->rec_bimestre])->with('status', 'Recurso subido correctamente!');
        
    }

    public function download(Request $req){
        //$data = $req->all();
        //print_r($data);
        return response()->download(storage_path("app\cursos/".$req->idcurso.'/'.$req->filename));
    }


}
