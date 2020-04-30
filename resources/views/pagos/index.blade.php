@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-md-6">
    </div>
    <div class="col-md-6">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
</div>
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Pagos - Juana Alarco de Dammert</strong>
            </div>
            <div class="card-body">
                <table class="tdisplay compact row-border hover table-responsive " id="dataTable">
                    <thead>
                        <tr>
                            <th>Año</th>
                            <th>DNI</th> 
                            <th>Alumno</th>
                            <th>M. Anual</th>
                            <th>Dscto</th>
                            <th>M. Inicial</th>
                            <th>Marzo</th>
                            <th>Abril</th>
                            <th>Mayo</th>
                            <th>Junio</th>
                            <th>Julio</th>
                            <th>Agosto</th>
                            <th>Setiembre</th>
                            <th>Octubre</th>
                            <th>Noviembre</th>
                            <th>Diciembre</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                    	@foreach($data as $d)
                    		<tr>
                    			<td>{{$d->año}}</td>
                                <td>{{$d->alum_dni}}</td>
                    			<td>{{$d->alum_ape . ', ' . $d->alum_nom}}</td>
                    			<td>{{'s/'.$d->montoanual}}</td>
                    			<td>{{'s/'.$d->descuento}}</td>
                                <td>{{'s/'.$d->inicial}}</td>
                    			<td>{{'s/'.$d->marzo}}</td>
                    			<td>{{'s/'.$d->abril}}</td>
                    			<td>{{'s/'.$d->mayo}}</td>
                    			<td>{{'s/'.$d->junio}}</td>
                    			<td>{{'s/'.$d->julio}}</td>
                    			<td>{{'s/'.$d->agosto}}</td>
                    			<td>{{'s/'.$d->setiembre}}</td>
                    			<td>{{'s/'.$d->octubre}}</td>
                    			<td>{{'s/'.$d->noviembre}}</td>
                    			<td>{{'s/'.$d->diciembre}}</td>
                    			<td>
                    				<a href="{{url('pago/'.$d->id.'/edit')}}" class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i></a>
                    			</td>
                    		</tr>
                    	@endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection

