<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="./">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Sistema Web - Control Académico</title>
    <!-- Icons-->
    <link href="{{asset('plantilla/node_modules/@coreui/icons/css/coreui-icons.min.css')}}" rel="stylesheet">
    <link href="{{asset('plantilla/node_modules/flag-icon-css/css/flag-icon.min.css')}}" rel="stylesheet">
    <link href="{{asset('plantilla/node_modules/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('plantilla/node_modules/simple-line-icons/css/simple-line-icons.css')}}" rel="stylesheet">
    <!-- Main styles for this application-->
    <link href="{{asset('plantilla/css/style.css')}}" rel="stylesheet">
    <link href="{{asset('plantilla/vendors/pace-progress/css/pace.min.css')}}" rel="stylesheet">
    <!-- DataTable-->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
    <!-- Global site tag (gtag.js) - Google Analytics-->
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-118965717-3"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag() {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      // Shared ID
      gtag('config', 'UA-118965717-3');
      // Bootstrap ID
      gtag('config', 'UA-118965717-5');
    </script>
  </head>
  <body class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show" onload="mueveReloj()">
    <header class="app-header navbar">
      <button class="navbar-toggler sidebar-toggler d-lg-none mr-auto" type="button" data-toggle="sidebar-show">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="#">
        <img class="navbar-brand-full" src="{{asset('img/login2logo.png')}}" width="89" height="25" alt="CoreUI Logo">
        <img class="navbar-brand-minimized" src="{{asset('img/logocorto.png')}}" width="30" height="30" alt="CoreUI Logo">
      </a>
      <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button" data-toggle="sidebar-lg-show">
        <span class="navbar-toggler-icon"></span>
      </button>
      <ul class="nav navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
            <img class="img-avatar" src="{{asset('plantilla/img/avatars/6.jpg')}}" alt="admin@bootstrapmaster.com">
          </a>  
          <div class="dropdown-menu dropdown-menu-right">
            
            <div class="dropdown-header text-center">
              <strong>Account</strong>
            </div>
            <a class="dropdown-item" href="#">
              <i class="fa fa-user"></i> Profile</a>
            <a class="dropdown-item" href="#">
              <i class="fa fa-wrench"></i> Settings</a>
            <a class="dropdown-item" href="{{ route('logout') }}"
                onclick="event.preventDefault();
                          document.getElementById('logout-form').submit();"><i class="fa fa-lock"></i> Logout
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
              @csrf
            </form>
          </div>
        </li>
      </ul>
    </header>

    <div class="app-body">
      <div class="sidebar">
        <nav class="sidebar-nav">
          <ul class="nav">
            <li class="nav-title">Components</li>
            <li class="nav-item">
              <a class="nav-link" href="{{route('home')}}">
                <i class="nav-icon icon-home"></i> Inicio</a>
            </li>
            @if(Auth::user()->hasrole('admin'))
            <li class="nav-item">
              <a class="nav-link" href="{{url('alumno')}}">
                <i class="nav-icon icon-user"></i> Alumnos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{{url('apoderado')}}">
                <i class="nav-icon icon-user"></i> Apoderados</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="">
                <i class="nav-icon icon-user"></i> Docentes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="">
                <i class="nav-icon icon-notebook"></i> Cursos</a>
            </li>
            <li class="nav-item nav-dropdown">
              <a class="nav-link nav-dropdown-toggle" href="#">
                <i class="nav-icon icon-chart"></i> Reportes</a>
              <ul class="nav-dropdown-items">
                <li class="nav-item">
                  <a class="nav-link" href="buttons/buttons.html">
                    <i class="nav-icon icon-cursor"></i> Buttons</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="buttons/button-group.html">
                    <i class="nav-icon icon-cursor"></i> Buttons Group</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="buttons/dropdowns.html">
                    <i class="nav-icon icon-cursor"></i> Dropdowns</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="buttons/brand-buttons.html">
                    <i class="nav-icon icon-cursor"></i> Brand Buttons</a>
                </li>
              </ul>
            </li>
            @endif
            @if(Auth::user()->hasrole('alum'))
            <li class="nav-item nav-dropdown">
              <a class="nav-link nav-dropdown-toggle" href="#">
                <i class="nav-icon icon-chart"></i> Datos Personales</a>
              <ul class="nav-dropdown-items">
                <li class="nav-item">
                  <a class="nav-link" href="buttons/buttons.html">
                    <i class="nav-icon icon-cursor"></i> Mis Asistencias</a>
                </li>
              </ul>
            </li>
            <li class="nav-item nav-dropdown">
              <a class="nav-link nav-dropdown-toggle" href="#">
                <i class="nav-icon icon-chart"></i> Asignaturas</a>
              <ul class="nav-dropdown-items">
                <li class="nav-item">
                  <a class="nav-link" href="buttons/buttons.html">
                    <i class="nav-icon icon-cursor"></i> Mis Cursos</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="buttons/button-group.html">
                    <i class="nav-icon icon-cursor"></i> Boleta de Notas</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="buttons/button-group.html">
                    <i class="nav-icon icon-cursor"></i> Ficha de Matricula</a>
                </li>
              </ul>
            </li>
            @endif
          </ul>
        </nav>
        <button class="sidebar-minimizer brand-minimizer" type="button"></button>
      </div>
      <main class="main">
        <div class="container-fluid">
          <div class="animated fadeIn">
          <!-- Contenido dinámico-->
          @yield('contenido')
          </div>
        </div>
      </main>
    </div>
    <footer class="app-footer">
      <div class="ml-auto">
        <span>Copyright &copy; 2020.</span>
      </div>
    </footer>
    <!-- CoreUI and necessary plugins-->
    <script src="{{asset('plantilla/node_modules/jquery/dist/jquery.min.js')}}"></script>
    <script src="{{asset('plantilla/node_modules/popper.js/dist/umd/popper.min.js')}}"></script>
    <script src="{{asset('plantilla/node_modules/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('plantilla/node_modules/pace-progress/pace.min.js')}}"></script>
    <script src="{{asset('plantilla/node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js')}}"></script>
    <script src="{{asset('plantilla/node_modules/@coreui/coreui/dist/js/coreui.min.js')}}"></script>
    
    <!-- DataTable-->
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
    <script>
      $(document).ready( function () {
          $('#dataTable').DataTable();
      } );
      var table = $('#dataTable').DataTable({
        language: {
            "decimal": "",
            "emptyTable": "No hay información",
            "info": "Mostrando _START_ a _END_ de _TOTAL_ registros",
            "infoEmpty": "Mostrando 0 to 0 of 0 registros",
            "infoFiltered": "(Filtrado de _MAX_ total registros)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Mostrar _MENU_ registros",
            "loadingRecords": "Cargando...",
            "processing": "Procesando...",
            "search": "Buscar:",
            "zeroRecords": "Sin resultados encontrados",
            "paginate": {
                "first": "Primero",
                "last": "Ultimo",
                "next": "Siguiente",
                "previous": "Anterior"
            }
        }
      });
    </script>

    @yield('scripts')

  </body>
</html>
