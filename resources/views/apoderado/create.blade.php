@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Registro de apoderado</strong>
            </div>
            <div class="card-body">
                <form action="" class="form-horizontal"> 
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">DNI</label>
                        <div class="col-md-2">
                            <input class="form-control" id="" type="text" name="apod_dni" placeholder="">
                        </div>
                        <label class="col-md-1 col-form-label">Apellidos</label>
                        <div class="col-md-4">
                            <input class="form-control" id="" type="text" name="apod_ape" placeholder="">
                        </div>
                        <label class="col-md-1 col-form-label">Nombres</label>
                        <div class="col-md-3">
                            <input class="form-control" id="" type="text" name="apod_nom" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">Sexo</label>
                            <div class="col-md-2">
                                <select class="form-control" id="" name="apod_sexo">
                                    <option hidden>-- Seleccione --</option>
                                    <option value="1">Masculino</option>
                                    <option value="0">Femenino</option>
                                </select>
                            </div>
                        <label class="col-md-1 col-form-label">E-mail</label>
                        <div class="col-md-3">
                            <input class="form-control" id="" type="email" name="apod_email" placeholder="">
                        </div>
                        <label class="col-md-1 col-form-label">Teléfono</label>
                        <div class="col-md-2">
                            <input class="form-control" id="" type="text" name="apod_tel" placeholder="">
                        </div>
                    </div>  
                    <div class="form-actions">
                        <input type="submit" value="Registrar" class="btn btn-primary">
                        <a href="{{url('apoderado')}}" class="btn btn-danger">Cancelar</a>
                    </div> 
                </form>
            </div>
        </div>
    </div>
</div>
@endsection