<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Trabajador;
use App\RoleUser;
use App\User;
use DB;

class DocenteController extends Controller
{
    public function index(Request $request){
        $data = DB::table('trabajador')
                ->join('role_user','role_user.user_id','trabajador.trab_user')
                ->where('role_user.role_id','=','3')
                ->get();
        return view ('docente.index',['docentes'=>$data]);
    }

    public function create(){
        return view ('docente.create');
    }

}
