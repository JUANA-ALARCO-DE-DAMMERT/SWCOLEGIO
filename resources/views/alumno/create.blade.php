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
                <form action="" method="" class="form-horizontal">
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">DNI</label>
                        <div class="col-md-2">
                            <input class="form-control" id="" type="text" name="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="">
                        </div>
                        <label class="col-md-1 col-form-label">Apellidos</label>
                        <div class="col-md-4">
                            <input class="form-control" id="" type="text" name="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="">
                        </div>
                        <label class="col-md-1 col-form-label">Nombres</label>
                        <div class="col-md-3">
                            <input class="form-control" id="" type="text" name="" onkeyup="javascript:this.value=this.value.toUpperCase();" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">Sexo</label>
                        <div class="col-md-2">
                            <select class="form-control" id="">
                                <option value="" hidden>--- Seleccione ---</option>
                                <option value="1">Masculino</option>
                                <option value="0">Femenino</option>
                            </select>
                        </div>
                        <label class="col-md-2 col-form-label">Fecha de Nacimiento</label>
                        <div class="col-md-3">
                            <input type="date" class="form-control">
                        </div>
                        <label class="col-md-1 col-form-label">Grado</label>
                        <div class="col-md-3">
                            <select class="form-control" id="">
                                <option value="" hidden>--- Seleccione ---</option>
                                <option value="">1° de secundaria</option>
                                <option value="">2° de secundaria</option>
                                <option value="">3° de secundaria</option>
                                <option value="">4° de secundaria</option>
                                <option value="">5° de secundaria</option>
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
                            <input class="form-control" id="apod_dni" type="text" name="apod_dni" readonly>
                        </div>
                        <label class="col-md-1 col-form-label">Apellidos</label>
                        <div class="col-md-4">
                            <input class="form-control" id="apod_ape" type="text" name="apod_ape" readonly>
                        </div>
                        <label class="col-md-1 col-form-label">Nombres</label>
                        <div class="col-md-3">
                            <input class="form-control" id="apod_nom" type="text" name="apod_nom" readonly>
                        </div>
                    </div>  
                    <div class="form-group row">
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
                        <input type="submit" value="Registrar" class="btn btn-primary">
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
        document.getElementById('apod_email').readOnly = true;
        document.getElementById('apod_tel').readOnly = true;
    } else {
        document.getElementById('apod_email').readOnly = false;
        document.getElementById('apod_tel').readOnly = false;
    }
}

$(document).ready(function(){
    $('#btnbuscar').click(function(){
        if($("#rb1").is(':checked')) {  
            console.log('rb1'); 
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
@endsection
