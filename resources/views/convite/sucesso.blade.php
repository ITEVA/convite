@extends('layout.principal')
@section('css')
    <link href="css/sucesso.css" rel="stylesheet" type="text/css">
@endsection
@section('conteudo')

    <img id="confirmacao" src="sucesso.jpg" alt="">

    <div style="margin-top: 65vh; margin-left: 67.5vw;" class="form-group  col-md-1 col-xs-12">
        <a href="/">Voltar</a>
    </div>

@stop
@section('js')
    <script src="js/principal.js"></script>
@endsection