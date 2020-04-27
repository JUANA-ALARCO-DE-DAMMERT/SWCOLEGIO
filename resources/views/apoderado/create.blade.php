@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Registro de apoderado</strong>
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
                <form action="{{url('apoderado')}}" method="POST" class="form-horizontal"> 
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
                            <input class="form-control" id="apod_dni" type="text" name="apod_dni" readonly required>
                        </div>
                        <label class="col-md-1 col-form-label">Apellidos</label>
                        <div class="col-md-4">
                            <input class="form-control" id="apod_ape" type="text" name="apod_ape" readonly required>
                        </div>
                        <label class="col-md-1 col-form-label">Nombres</label>
                        <div class="col-md-3">
                            <input class="form-control" id="apod_nom" type="text" name="apod_nom" readonly required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">Sexo</label>
                            <div class="col-md-2">
                                <select class="form-control" id="" name="apod_sexo" required>
                                    <option value="" hidden>-- Seleccione --</option>
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
                        <input type="submit" value="Registrar" id="btn-only1click" class="btn btn-primary">
                        <a href="{{url('apoderado')}}" class="btn btn-danger">Cancelar</a>
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
                    var apoderado = JSON.parse(data);
                    if (apoderado.exito==true){
                        $('#apod_dni').val(apoderado.dni);            
                        $('#apod_ape').val(apoderado.paterno + ' ' + apoderado.materno);            
                        $('#apod_nom').val(apoderado.nombres);    
                    } else {
                        $('#apod_dni').val('');            
                        $('#apod_ape').val('');            
                        $('#apod_nom').val('');  
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
<script type="text/javascript">
    // Variable global que nos dirá si hemos dado un click al botón
var clicando= false;

// Evento de click del primer botón
$("#btn-dobleclick").click(function() {
  // Mostramos el Alert
  alert( "Handler for dobleclick.click() called." );
});

// Evento del segundo boton
$("#btn-only1click").click(function() {
  // Si ha sido clicado
  if (clicando){
    // Mostramos que ya se ha clicado, y no puede clicarse de nuevo
    alert( "Que ya he realizado un click." );
  // Si no ha sido clicado
  } else {
    // Le decimos que ha sido clicado
    clicando= true;
    // Mostramos el mensaje de que ha sido clicado
    alert( "Se acaba de Registrar Correctamente un Apoderado." );
  }
});
</script>
@endsection




