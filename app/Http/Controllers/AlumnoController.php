<?php

namespace App\Http\Controllers;

use App\Alumno;
use App\Apoderado;
use App\RoleUser;
use App\User;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AlumnoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::table('alumno')->get();
        return view('alumno.index',['alumnos'=>$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('alumno.create');
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
            'alum_dni' => 'required|unique:alumno,alum_dni|numeric|digits:8',
            'alum_ape' => 'required',
            'alum_nom' => 'required',
            'alum_sexo' => 'required',
            'alum_grad' => 'required',
            'alum_fnac' => 'required',
            'apod_dni' => 'required',
            'apod_ape' => 'required',
            'apod_nom' => 'required',
            'apod_sexo' => 'nullable',
            'apod_tel' => 'nullable',
            'apod_email' => 'nullable'
        ]);
        $data = $request->all();
        User::create([
            'id' => $data['alum_dni'],
            'usuario' => $data['alum_dni'],
            'password' => Hash::make($data['alum_dni']),
        ]);
        $rol = RoleUser::create([
            'user_id' => $data['alum_dni'],
            'role_id' => '4'
        ]);
        if($data['rb'] == 1){
            $apoderado = DB::table('apoderado')
                            ->where('apoderado.apod_dni','=',$data['apod_dni'])
                            ->first();
            $alumno = Alumno::create([
                'alum_dni' => $data['alum_dni'],
                'alum_ape' => $data['alum_ape'],
                'alum_nom' => $data['alum_nom'],
                'alum_sexo' => $data['alum_sexo'],
                'alum_grad' => $data['alum_grad'],
                'alum_fnac' => $data['alum_fnac'],
                'alum_apod' => $apoderado->apod_id,
                'alum_user' => $data['alum_dni']
            ]); 
        } else{
            $apod = Apoderado::create([
                'apod_dni' => $data['apod_dni'],
                'apod_ape' => $data['apod_ape'],
                'apod_nom' => $data['apod_nom'],
                'apod_sexo' => $data['apod_sexo'],
                'apod_email' => $data['apod_email'],
                'apod_tel' => $data['apod_tel']
            ]);
            $alumno = Alumno::create([
                'alum_dni' => $data['alum_dni'],
                'alum_ape' => $data['alum_ape'],
                'alum_nom' => $data['alum_nom'],
                'alum_sexo' => $data['alum_sexo'],
                'alum_grad' => $data['alum_grad'],
                'alum_fnac' => $data['alum_fnac'],
                'alum_apod' => $apod->apod_id,
                'alum_user' => $data['alum_dni']
            ]); 
        }
        return redirect()->route('alumno.index')->with('status', 'Alumno agregado correctamente!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Alumno  $alumno
     * @return \Illuminate\Http\Response
     */
    public function show(Alumno $alumno)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Alumno  $alumno
     * @return \Illuminate\Http\Response
     */
    public function edit(Alumno $alumno)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Alumno  $alumno
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Alumno $alumno)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Alumno  $alumno
     * @return \Illuminate\Http\Response
     */
    public function destroy(Alumno $alumno)
    {
        //
    }

    public function misCursos($id){
        return view ('alumno.miscursos');
    }

}
