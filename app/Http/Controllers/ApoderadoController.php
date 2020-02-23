<?php

namespace App\Http\Controllers;

use App\Apoderado;
use Illuminate\Http\Request;
use DB;

class ApoderadoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::table('apoderado')->get();
        return view('apoderado.index',['apoderados'=>$data]);
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Apoderado  $apoderado
     * @return \Illuminate\Http\Response
     */
    public function show(Apoderado $apoderado)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Apoderado  $apoderado
     * @return \Illuminate\Http\Response
     */
    public function edit(Apoderado $apoderado)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Apoderado  $apoderado
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Apoderado $apoderado)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Apoderado  $apoderado
     * @return \Illuminate\Http\Response
     */
    public function destroy(Apoderado $apoderado)
    {
        //
    }
}
