@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Modificar docente</strong>
            </div>
            <div class="card-body">
                <form action="{{url('docente/'.$trab->trab_id)}}" method="POST" class="form-horizontal"> 
                @method('PATCH')
                {{ csrf_field() }}
                    @if (count($errors)>0)
                    <div class="alert alert-danger">
                        <p>Corregir los siguientes campos:</p>
                        <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{$error}}</li>
                        @endforeach
                        </ul>
                    </div>
                    @endif
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">DNI</label>
                        <div class="col-md-2">
                            <input class="form-control" id="" type="text" name="trab_dni" onkeyup="javascript:this.value=this.value.toUpperCase();" value="{{$trab->trab_dni}}" required readonly>
                        </div>
                        <label class="col-md-1 col-form-label">Apellidos</label>
                        <div class="col-md-4">
                            <input class="form-control" id="" type="text" name="trab_ape" onkeyup="javascript:this.value=this.value.toUpperCase();" value="{{$trab->trab_ape}}" required readonly>
                        </div>
                        <label class="col-md-1 col-form-label">Nombres</label>
                        <div class="col-md-3">
                            <input class="form-control" id="" type="text" name="trab_nom" onkeyup="javascript:this.value=this.value.toUpperCase();" value="{{$trab->trab_nom}}" required readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">Sexo</label>
                            <div class="col-md-2" >
                                <select class="form-control" id="" name="trab_sexo" required readonly >
                                    <option value="" hidden>-- Seleccione --</option>
                                        @if ($trab->trab_sexo == 1)
                                    <option selected="" value="1" >Masculino</option>
                                        @else
                                    <option selected="" value="0">Femenino</option>
                                        @endif
                                </select >                       
                            </div>
                        <label class="col-md-1 col-form-label">E-mail</label>
                        <div class="col-md-3">
                            <input class="form-control" id="" type="email" name="trab_email" value="{{$trab->trab_email}}" placeholder="">
                        </div>
                        <label class="col-md-1 col-form-label">Teléfono</label>
                        <div class="col-md-2">
                            <input class="form-control" id="" type="text" name="trab_tel" value="{{$trab->trab_tel}}" placeholder="">
                        </div>
                    </div>  
                    <div class="form-actions">
                        <input type="submit" value="Editar" class="btn btn-warning">
                        <a href="{{url('docente')}}" class="btn btn-danger">Cancelar</a>
                    </div> 
                </form>
            </div>
        </div>
    </div>
</div>
@endsection