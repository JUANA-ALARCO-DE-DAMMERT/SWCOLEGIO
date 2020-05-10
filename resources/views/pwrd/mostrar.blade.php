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
<div class="row">
    <div class="col-md-12">
        <div class="card my-3">
            <div class="card-header">
                <div class="card-header-actions">
                    <a href="{{url('home')}}" class="btn btn-block btn-outline-dark btn-sm"><i class="fa fa-mail-reply"></i></a>
                </div>
            </div>
            <form action="{{url('changepass')}}" method="POST">
            {{ csrf_field() }}
            <div class="card-body">
                <div class="row">                    
                    <div class="col-md-6">
                        <div class="form-group ">
                            <label>Nueva contraseña</label>
                            <input type="password" name="newpass" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <input type="submit" value="Cambiar Contraseña" class="btn btn-primary">  
                    </div>  
                </div>
                
            </div>
            </form>
        </div>
    </div>
</div>
@endsection
