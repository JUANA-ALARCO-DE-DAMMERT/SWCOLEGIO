<?php

namespace App\Http\Controllers;

use App\Pago;
use DB;
use Illuminate\Http\Request;

class PagoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::table('pagos')
                    ->join('alumno','alumno.alum_id','pagos.idalumno')
                    ->orderBy('pagos.año', 'asc')
                    ->orderBy('alumno.alum_ape', 'asc')
                    ->get();
        return view ('pagos.index',['data'=>$data]);
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
     * @param  \App\Pago  $pago
     * @return \Illuminate\Http\Response
     */
    public function show(Pago $pago)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Pago  $pago
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $pago = DB::table('pagos')
                    ->join('alumno','alumno.alum_id','pagos.idalumno')
                    ->where('pagos.id','=',$id)
                    ->first();
        return view ('pagos.edit',['p'=>$pago]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Pago  $pago
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $pago = Pago::find($id);
        $request->all();
        $pago->update($request->all());
        return redirect()->route('pago.index')->with('status', 'Pago editado correctamente!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Pago  $pago
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pago $pago)
    {
        //
    }
}
