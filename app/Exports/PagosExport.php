<?php

namespace App\Exports;

use App\Pago;
use Maatwebsite\Excel\Concerns\FromCollection;
use DB;

class PagosExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        //return Pago::all();
    	$data = DB::table('pagos')
    			->select('alum_dni','alum_ape','alum_nom','montoanual','descuento','inicial','marzo',
    					'abril','mayo','junio','julio','agosto','setiembre','octubre','noviembre','diciembre')
    			->join('alumno','alumno.alum_id','pagos.idalumno')
    			->where('pagos.año','=','2020')
    			->orderBy('alumno.alum_ape','asc')
    			->get();
    	return $data;
    }
}
