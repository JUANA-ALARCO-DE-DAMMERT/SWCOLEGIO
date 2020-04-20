@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Registro de secretaria</strong>
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <div class="col-md-2">
                        <input class="form-control" id="dni" type="text" placeholder="Escriba el DNI" maxlength="8" minlength="8" autofocus>
                    </div>
                    <div class="col-md-2">
                        <button id="btnbuscar" class="btn btn-success form-control"><i class="fa fa-search"></i> Buscar</button>
                    </div>
                    <div class="col-md-8">
                        <label id="mensaje" style="color: red;display: none;font-size: 12pt;">El número de DNI no es válido</label>
                    </div>
                </div>
                <form action="{{url('secretaria')}}" method="POST" class="form-horizontal"> 
                @method('POST')
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
                            <input class="form-control" id="trab_dni" type="text" name="trab_dni" value="{{old('trab_dni')}}" readonly required>
                        </div>
                        <label class="col-md-1 col-form-label">Apellidos</label>
                        <div class="col-md-4">
                            <input class="form-control" id="trab_ape" type="text" name="trab_ape" value="{{old('trab_ape')}}" readonly required>
                        </div>
                        <label class="col-md-1 col-form-label">Nombres</label>
                        <div class="col-md-3">
                            <input class="form-control" id="trab_nom" type="text" name="trab_nom" value="{{old('trab_nom')}}" readonly required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">Sexo</label>
                        <div class="col-md-2">
                            <select class="form-control" id="" name="trab_sexo" required>
                                <option value="" hidden>-- Seleccione --</option>
                                <option value="1" @if (old('trab_sexo') == "1") {{ 'selected' }} @endif>Masculino</option>
                                <option value="0" @if (old('trab_sexo') == "0") {{ 'selected' }} @endif>Femenino</option>
                            </select>
                        </div>
                        <label class="col-md-2 col-form-label">F. Nacimiento</label>
                        <div class="col-md-3">
                            <input class="form-control" type="date" name="trab_fnac" value="{{old('trab_fnac')}}">
                        </div>
                    </div>
                    <div class="form-actions">
                        <input type="submit" value="Registrar" class="btn btn-primary">
                        <a href="{{url('secretaria')}}" class="btn btn-danger">Cancelar</a>
                    </div> 
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script>
    $(document).ready(function(){
        $('#btnbuscar').click(function(){
            var numdni=$('#dni').val();
            if (numdni!='') {
                //AJAX
                $.get('../api/dni/'+numdni, function (data) {
                    var docente = JSON.parse(data);
                    if (docente.exito==true){
                        $('#trab_dni').val(docente.dni);            
                        $('#trab_ape').val(docente.paterno + ' ' + docente.materno);            
                        $('#trab_nom').val(docente.nombres);    
                    } else {
                        $('#trab_dni').val('');            
                        $('#trab_ape').val('');            
                        $('#trab_nom').val('');  
                        $('#mensaje').show();
                        $('#mensaje').delay(2000).hide(2500);  
                    }    
                });
            } else{
                alert('Escribir el DNI');
                $('#dni').focus();
            }
        })
    });
</script>
@endsection
