@extends('layout.principal')
@section('css')
    <link href="css/datatables/tools/css/dataTables.tableTools.css" rel="stylesheet">
    <link href="css/datatables/css/jquery.dataTables.css" rel="stylesheet">
@endsection
@section('conteudo')
    <style>
        body{
            overflow: auto;
        }
    </style>
    <div class="form-group col-md-6 col-xs-12" style="margin: 9% 0 6% 17%;">
        <table id="example" class="table table-striped responsive-utilities jambo_table">
            <thead>
            <tr class="headings">
                <th>Nome</th>
                <th>Instituicao</th>
                <th>Presente</th>
            </tr>
            </thead>
            <tbody>
            @if(count($pessoas) > 0)
                @foreach($pessoas as $pessoa)
                    <tr class="even pointer">
                        <td>{{$pessoa->nome}}</td>
                        <td>{{$pessoa->instituicao->nome}}</td>
                        <td><a style="font-size: 20px;" {{$pessoa->presente == 1 ? "" : "href=presenca/$pessoa->id"}}><i class="fa {{$pessoa->presente == 1 ? 'fa-thumbs-o-up' : 'fa-close'}}" aria-hidden="true"></i></a></td>
                    </tr>
                @endforeach
            @else
                <tr>
                    <td colspan="5" class="iconeListagem">Nenhuma permissão encontrada</td>
                </tr>
            @endif
            </tbody>
        </table>
    </div>
@stop
@section('js')
    <!-- Datatables -->
    <script src="js/datatables/js/jquery.dataTables.js"></script>

    <script>
        var asInitVals = new Array();
        var oTable = $('#example').dataTable({
            //"bPaginate": false,
            "order": [[0, "asc"]],
            "language": {
                "sEmptyTable": "Nenhum registro encontrado",
                "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
                "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
                "sInfoFiltered": "(Filtrados de _MAX_ registros)",
                "sInfoPostFix": "",
                "sInfoThousands": ".",
                "sLengthMenu": "_MENU_ resultados por página",
                "sLoadingRecords": "Carregando...",
                "sProcessing": "Processando...",
                "sZeroRecords": "Nenhum registro encontrado",
                "sSearch": "Pesquisar: ",
                "oPaginate": {
                    "sNext": "Próximo",
                    "sPrevious": "Anterior",
                    "sFirst": "Primeiro",
                    "sLast": "Último"
                },
                "oAria": {
                    "sSortAscending": ": Ordenar colunas de forma ascendente",
                    "sSortDescending": ": Ordenar colunas de forma descendente"
                }
            },
            'iDisplayLength': 10,
            "sPaginationType": "full_numbers"
        });
    </script>
@endsection