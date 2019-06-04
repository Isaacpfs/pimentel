<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>pimentel</title>

        <!-- Favicon -->
        <link href="{{URL::asset('img/favicon.ico')}}" rel="shortcut icon">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

        <!-- Styles -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="{{URL::asset('css/style-home.css')}}" rel="stylesheet" type="text/css"/>

        <!-- JavaScript -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="{{URL::asset('js/ajax.js')}}"></script>
    </head>
    <body>
        <div class="flex-center position-ref full-height" id="fundo">
            @if (Route::has('login'))
                <div class="top-right links">
                    @if (Auth::check())
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ url('/login') }}">Login</a>
                        <a href="{{ url('/register') }}">Criar Conta</a>
                    @endif
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                        pimentel
                </div>
                <div>
                        <h2 id="texto1"> Sua plataforma para controle de estoques!</h2>
                 </div>
                <div ></div>
                        
                    <div class="links">
                    <a href="#">
                        <i class="fa fa-file-text"> Documentação</i>
                    </a>
                    <a href="">
                        <i class="fa fa-youtube-play"> Redes Sociais</i>
                    </a>
                    <a href="sobre.blade.php">
                        <i class="fa fa-info"> Sobre</i>
                    </a>
                    </div>
            </div>
        </div>
  
    <div id="texto2">
        <h3>A pimentel enterprise é a mais nova plataforma de controle de estoques do Brasil.</h3> 
                        <h3>Desenvolvida em 2019, é a primeira feita no sudeste do Tocantins.</h3></div>
                    
                    <div id="foto">    
                        <img src="{{URL::asset('img/dispositivos.png')}}" id="dispositivos"> 
                    <h3> A facilidade e a simplicidade da ferramenta disponível para vários dispositivos!</h3>  </div>

                    <section id="login-final">
                        <li><a href="{{ url('/login') }}">Login</a></li>
                        <li><a href="{{ url('/register') }}">Criar Conta</a></li>
                    </section>
                    <img src="{{URL::asset('img/subir.png')}}" 
                 id="up" 
                 style="display: none;" 
                 alt="Ícone Subir ao Topo" 
                 title="Subir ao topo?">
 <footer>
            <div id="data"><p >pimentel - Copyright © <?= date("Y") ?></p></div>
</footer>        
</body>
</html>
