<?php

namespace App\Http\Controllers;

use App\Video;
use Illuminate\Http\Request;
use DB;
use Auth;

class VideoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $rol;
        if(Auth::user()->hasrole('secre'))
        {
            $rol = 2;
            $videos = DB::table('video')
                    ->join('alumno','alumno.alum_dni','video.idalumno')
                    ->join('trabajador','trabajador.trab_dni','video.idsecre')
                    ->get();
        } elseif(Auth::user()->hasrole('alum')){
            $rol = 4;
            $videos = DB::table('video')
                    ->join('alumno','alumno.alum_dni','video.idalumno')
                    ->join('trabajador','trabajador.trab_dni','video.idsecre')
                    ->where('video.idalumno','=',Auth::user()->usuario)
                    ->get();
        }
        $alumnos = DB::table('alumno')->where('alum_est','=',1)->orderBy('alum_ape','asc')->get();
        return view('videos.index',['alumnos'=>$alumnos, 'videos'=>$videos]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        Video::create([
            'titulo' => $data['titulo'],
            'link' => $data['link'],
            'idalumno' => $data['idalumno'],
            'idsecre' => Auth::user()->usuario
        ]);
        return redirect()->route('video.index')->with('status', 'Video agregado correctamente!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $video = Video::find($id);
        return view('videos.show',['video'=>$video]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function edit(Video $video)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Video $video)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function destroy(Video $video)
    {
        //
    }
}
