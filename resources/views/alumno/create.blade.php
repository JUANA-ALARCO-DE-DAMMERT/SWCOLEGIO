@extends('plantilla.plantilla')
@section('contenido')

<div class="row mt-4">
    <div class="col-lg-12">
        <h4>Registro de estudiante</h4>
    </div>
</div>
<div class="row mt-2">
    <div class="col-lg-12">
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#estudiante" role="tab" aria-controls="estudiante">Estudiante</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#apoderado" role="tab" aria-controls="apoderado">Apoderado</a>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="estudiante" role="tabpanel">
                <form action="{{url('alumno')}}" method="POST" class="form-horizontal">
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
                            <input class="form-control" id="" type="text" name="alum_dni" onkeyup="javascript:this.value=this.value.toUpperCase();" maxlength="8" minlength="8" autofocus>
                        </div>
                        <label class="col-md-1 col-form-label">Apellidos</label>
                        <div class="col-md-4">
                            <input class="form-control" id="" type="text" name="alum_ape" onkeyup="javascript:this.value=this.value.toUpperCase();" >
                        </div>
                        <label class="col-md-1 col-form-label">Nombres</label>
                        <div class="col-md-3">
                            <input class="form-control" id="" type="text" name="alum_nom" onkeyup="javascript:this.value=this.value.toUpperCase();" >
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">Sexo</label>
                        <div class="col-md-2">
                            <select class="form-control" id="" name="alum_sexo">
                                <option value="" hidden>--- Seleccione ---</option>
                                <option value="1">Masculino</option>
                                <option value="0">Femenino</option>
                            </select>
                        </div>
                        <label class="col-md-2 col-form-label">Fecha de Nacimiento</label>
                        <div class="col-md-3">
                            <input type="date" name="alum_fnac" class="form-control">
                        </div>
                        <label class="col-md-1 col-form-label">Grado</label>
                        <div class="col-md-3">
                            <select class="form-control" id="" name="alum_grad">
                                <option value="" hidden>--- Seleccione ---</option>
                                <option value="1">1° de primaria</option>
                                <option value="2">2° de primaria</option>
                                <option value="3">3° de primaria</option>
                                <option value="4">4° de primaria</option>
                                <option value="5">5° de primaria</option>
                                <option value="6">6° de primaria</option>
                                <option value="7">1° de secundaria</option>
                                <option value="8">2° de secundaria</option>
                                <option value="9">3° de secundaria</option>
                                <option value="10">4° de secundaria</option>
                                <option value="11">5° de secundaria</option>
                            </select>
                        </div>
                    </div>
            </div>
            <div class="tab-pane" id="apoderado" role="tabpanel">
                    <div class="form-group row">
                        <label class="col-md-4 col-form-label">¿El apoderado está registrado en la base de datos?</label>
                        <div class="col-md-8 col-form-label">
                            <div class="form-check form-check-inline mr-1">
                                <input type="radio" class="form-check-input" value="1" onclick="handleClick(this);" name="rb" id="rb1" checked>
                                <label for="inline-radio1" class="form-check-label">Si</label>
                            </div>
                            <div class="form-check form-check-inline mr-1">
                                <input type="radio" class="form-check-input" value="0" onclick="handleClick(this);" name="rb" id="rb2">
                                <label for="inline-radio2" class="form-check-label">No</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-2">
                            <input class="form-control" id="dni" type="text" placeholder="Escriba el DNI" maxlength="8" minlength="8" autofocus>
                        </div>
                        <div class="col-md-2">
                            <button id="btnbuscar" class="btn btn-success form-control" type="button"><i class="fa fa-search"></i> Buscar</button>
                        </div>
                        <div class="col-md-8">
                            <label id="mensaje" style="color: red;display: none;font-size: 12pt;">El número de DNI no es válido</label>
                        </div>
                    </div>
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
                            <select class="form-control" id="apod_sexo" name="apod_sexo" readonly required>
                                <option value="" hidden>--- Seleccione ---</option>
                                <option value="1">Masculino</option>
                                <option value="0">Femenino</option>
                            </select>
                        </div>
                        <label class="col-md-1 col-form-label">E-mail</label>
                        <div class="col-md-3">
                            <input class="form-control" id="apod_email" type="email" name="apod_email" readonly>
                        </div>
                        <label class="col-md-1 col-form-label">Teléfono</label>
                        <div class="col-md-2">
                            <input class="form-control" id="apod_tel" type="text" name="apod_tel" readonly>
                        </div>
                    </div>  
                    <div class="form-actions">
                        <input type="submit" value="Registrar" id="btn-only1click" class="btn btn-primary">
                        <a href="" class="btn btn-danger">Cancelar</a>
                    </div> 
            </div>
                </form>
    </div>
</div>
@endsection

@section('scripts')
<script>
    function handleClick(myRadio) {
        if(myRadio.value == 1){
            $('#apod_dni').val('');            
            $('#apod_ape').val('');            
            $('#apod_nom').val('');  
            $('#apod_tel').val('');  
            $('#apod_nom').val('');  
            $('#dni').val('');  
            document.getElementById('apod_email').readOnly = true;
            document.getElementById('apod_tel').readOnly = true;
            document.getElementById('apod_sexo').selectedIndex = "0";
            $('#apod_sexo').attr("readonly", true);
        } else {
            $('#apod_dni').val('');            
            $('#apod_ape').val('');            
            $('#apod_nom').val('');  
            $('#apod_tel').val('');  
            $('#apod_email').val('');  
            $('#dni ').val('');  
            document.getElementById('apod_email').readOnly = false;
            document.getElementById('apod_tel').readOnly = false;
            document.getElementById('apod_sexo').selectedIndex = "0";
            $('#apod_sexo').attr("readonly", false);
        }
    }

    $(document).ready(function(){
        $('#btnbuscar').click(function(){
            if($("#rb1").is(':checked')) {  
                var numdni=$('#dni').val();
                if (numdni!='') {
                    //AJAX
                    $.get('../api/apoderado/'+numdni, function (data) {
                        var apoderado = JSON.stringify(data);
                        var apod = JSON.parse(apoderado);
                        if (apod[0].apod_ape !== 0){
                            $('#apod_dni').val(apod[0].apod_dni);            
                            $('#apod_ape').val(apod[0].apod_ape);            
                            $('#apod_nom').val(apod[0].apod_nom);    
                            $('#apod_tel').val(apod[0].apod_tel);    
                            $('#apod_email').val(apod[0].apod_email);
                            if (apod[0].apod_sexo == 1) {
                                document.getElementById('apod_sexo').selectedIndex = 1;
                            } else {
                                document.getElementById('apod_sexo').selectedIndex = 2;
                            } 
                        } else {
                            $('#apod_dni').val('');            
                            $('#apod_ape').val('');            
                            $('#apod_nom').val('');  
                            $('#mensaje').show();
                            $('#mensaje').delay(2000).hide(2500);  
                        }    
                    });
                } else {
                    alert('Escribir el DNI');
                    $('#dni').focus();
                }
            } else {  
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
            } 
        });
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
    alert( "Alumnos Registrados correctamente" );
  }
});
</script>
@endsection
