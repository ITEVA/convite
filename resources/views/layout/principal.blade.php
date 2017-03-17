<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Convite</title>

    <!-- Url base do sistema -->
    <base href="{{url('/')}}" target="_self" />

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <link href="css/principal.css" rel="stylesheet" type="text/css">
    <!-- Links extras css -->
    @yield('css')

    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.mask.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body background="backBody.jpg">
    <div class="topo pull-right">
        <img id="topo" src="topo2.png" alt="">
    </div>

    <!-- Conteúdo do página -->
    @yield('conteudo')

    <div class="rodape col-lg-12">
        <img id="rodape" src="rodape.png" alt="">
    </div>

    <!-- Links extras js -->
    @yield('js')
</body>
</html>