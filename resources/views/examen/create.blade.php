@extends('plantilla.plantilla')
@section('contenido')
<div class="row mt-4">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong>Examen Virtual</strong>
            </div>
            <div class="card-body">
                <form action="{{url('examen')}}" method="POST" class="form-horizontal"> 
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
                        <label class="col-md-1 col-form-label">Título</label>
                        <div class="col-md-5">
                            <input class="form-control" required type="text" name="exa_titulo" >
                        </div>
                    </div>                    
                    <div class="form-group row">
                        <label class="col-md-1 col-form-label">Link</label>
                        <div class="col-md-11">
                            <input type="hidden" name="exa_idcurso" value="{{$idcurso}}">
                            <textarea name="exa_link" required class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-actions">
                        <input type="submit" value="Subir" id="btn-only1click" class="btn btn-primary">
                        <a href="{{url('curso/'.$idcurso)}}" class="btn btn-danger">Cancelar</a>
                    </div> 
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
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
    alert( "Acaba de Subir un Examen en Linea de Google Formularios, Porfavor espere que le salga el mensaje de Examen Agregado Correctamente" );
  }
});
</script>
@endsection