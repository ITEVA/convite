@extends('layout.principal')
@section('css')
    <link href="css/formulario.css" rel="stylesheet" type="text/css">
@endsection
@section('conteudo')
    <div class="col-md-10 col-sm-12 col-xs-12">
        <form id="formConvite" method="POST" action="{{$action}}" enctype="multipart/form-data" data-parsley-validate>
            <input type="hidden" name="_token" value="{{ csrf_token() }}"/>

            <div class="x_title  col-md-12 col-xs-12">
                <h2>Cadastramento para Primeira Etapa das Ações para Fortalecimento das Organizações da Sociedade Civil do Ceará</h2>
            </div>

            <div class="x_title  col-md-12 col-xs-12">
                <h2>Informações da Instituição</h2>
            </div>

            <div class="x_title  col-md-12 col-xs-12">
                @if (count($errors) > 0)
                    <span style="color: red;">
                                @foreach ($errors->all() as $error)
                            {{ $error }}
                        @endforeach
                            </span>
                @endif
            </div>

            <div class="x_title  col-md-12 col-xs-12">
                <h5>*Campos obrigatórios</h5>
            </div>

            <!-- <div class="form-group col-md-2 col-xs-12">
                <label for="cnpj">CNPJ*</label>
                <input type="text" id="cnpj" class="form-control obrigatorio cnpj" name="cnpj" placeholder="__.___.___/____-__"
                       value="{{old('cnpj') !== null ? old('cnpj') : $instituicao->cnpj}}"/>
            </div> -->

            <div class="form-group col-md-5 col-xs-12">
                <label for="nome">Nome da instituição*</label>
                <input type="text" id="nome" class="form-control obrigatorio" name="nome"
                       value="{{old('nome') !== null ? old('nome') : $instituicao->nome}}"/>
            </div>

            <div class="form-group col-md-5 col-xs-12">
                <label for="email">Email da instituição*</label>
                <input type="email" id="email" required="required" class="form-control obrigatorio" name="email"
                       value="{{old('email') !== null ? old('email') : $instituicao->email}}"/>
            </div>

            <div class="form-group col-md-2 col-xs-12">
                <label for="telefone">Telefone*</label>
                <input type="text" id="telefone" class="form-control obrigatorio fixo" name="telefone" placeholder="(__) ____-____"
                       value="{{old('telefone') !== null ? old('telefone') : $instituicao->telefone}}"/>
            </div>

            <div class="form-group col-md-4 col-xs-12">
                <label for="endereco">Endereço</label>
                <input type="text" id="endereco" class="form-control" name="endereco"
                       value="{{old('endereco') !== null ? old('endereco') : $instituicao->endereco}}"/>
            </div>

            <div class="form-group col-md-1 col-xs-12">
                <label for="numero">Número</label>
                <input type="text" id="numero" class="form-control" name="numero"
                       value="{{old('numero') !== null ? old('numero') : $instituicao->numero}}"/>
            </div>

            <div class="form-group col-md-2 col-xs-12">
                <label for="complemento">Complemento</label>
                <input type="text" id="complemento" class="form-control" name="complemento"
                       value="{{old('complemento') !== null ? old('complemento') : $instituicao->complemento}}"/>
            </div>

            <div class="form-group col-md-2 col-xs-12">
                <label for="bairro">Bairro</label>
                <input type="text" id="bairro" class="form-control" name="bairro"
                       value="{{old('bairro') !== null ? old('bairro') : $instituicao->bairro}}"/>
            </div>

            <div class="form-group col-md-2 col-xs-12">

                <label for="cidade">Cidade*</label>
                <input type="text" id="cidade" class="form-control obrigatorio" name="cidade"
                       value="{{old('cidade') !== null ? old('cidade') : $instituicao->cidade}}"/>
            </div>

            <div class="form-group col-md-1 col-xs-12">
                <label for="uf">UF*</label>
                <select id="uf" name="uf" class="form-control obrigatorio select2_single" tabindex="-1">
                    <option value="">Selecione uma UF</option>
                    @foreach($ufs as $uf)
                        <option {{$uf == old('uf') || $instituicao->uf == $uf ? 'selected="selected"' : ''}}
                                value="{{$uf}}">{{$uf}}</option>
                    @endforeach
                </select>
            </div>

            <div class="x_title  col-md-12 col-xs-12">
                <h2>Representantes</h2>
            </div>

            <div class="x_title  col-md-12 col-xs-12">
                <h5>*É obrigatório o cadastro de pelo menos um representante</h5>
            </div>

            <div class="form-group col-md-6 col-xs-12">
                <label for="nomeConvidado">Nome*</label>
                <input type="text" class="form-control obrigatorioRepre" name="nome_convidado[]" value=""/>
            </div>

            <div class="form-group col-md-4 col-xs-12">
                <label for="emailConvidado">Email*</label>
                <input type="email" required="required" class="form-control obrigatorioRepre" name="email_convidado[]" value=""/>
            </div>

            <div class="form-group col-md-2 col-xs-12">
                <label for="celularConvidado">Celular*</label>
                <input type="text" class="form-control obrigatorioRepre celular" name="celular_convidado[]" placeholder="(__) _ ____-____" value=""/>
            </div>

            <div class="form-group col-md-6 col-xs-12">
                <label for="nomeConvidado">Nome</label>
                <input type="text" class="form-control" name="nome_convidado[]" value=""/>
            </div>

            <div class="form-group col-md-4 col-xs-12">
                <label for="emailConvidado">Email</label>
                <input type="email" required="required" class="form-control" name="email_convidado[]" value=""/>
            </div>

            <div class="form-group col-md-2 col-xs-12">
                <label for="celularConvidado">Celular</label>
                <input type="text" class="form-control celular" name="celular_convidado[]" placeholder="(__) _ ____-____" value=""/>
            </div>

            <div class="form-group col-md-6 col-xs-12">
                <label for="nomeConvidado">Nome</label>
                <input type="text" class="form-control" name="nome_convidado[]" value=""/>
            </div>

            <div class="form-group col-md-4 col-xs-12">
                <label for="emailConvidado">Email</label>
                <input type="email" required="required" class="form-control" name="email_convidado[]" value=""/>
            </div>

            <div class="form-group col-md-2 col-xs-12">
                <label for="celularConvidado">Celular</label>
                <input type="text" class="form-control celular" name="celular_convidado[]" placeholder="(__) _ ____-____" value=""/>
            </div>

            <div class="ln_solid col-md-12 col-xs-12"></div>
            <div class="form-group  col-md-12 col-xs-12">
                <input id="salvarInstituicao" type="submit" name="salvar" value="Salvar" class="btn btn-primary">&nbsp;&nbsp;&nbsp;
                <a href="/">Voltar</a>
            </div>
        </form>
    </div>
    <div class="modal fade" id="erroObrigatorio" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Erro ao cadastrar</h4>
                </div>
                <div class="modal-body">
                    <p>Preencha todos os campos obrigatórios!</p>
                    <input type="hidden" id="tipoRemocao" value="" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <div class="modal fade" id="erroRepresentante" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Erro ao cadastrar</h4>
                </div>
                <div class="modal-body">
                    <p>Forneça dados de pelo menos um representante!</p>
                    <input type="hidden" id="tipoRemocao" value="" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <div class="modal fade" id="erroTelefone" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Erro ao cadastrar</h4>
                </div>
                <div class="modal-body">
                    <p>Preencha corretamente o campo telefone!</p>
                    <input type="hidden" id="tipoRemocao" value="" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <div class="modal fade" id="erroCelular" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Erro ao cadastrar</h4>
                </div>
                <div class="modal-body">
                    <p>Preencha corretamente os campos de celular!</p>
                    <input type="hidden" id="tipoRemocao" value="" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <div class="modal fade" id="erroCnpj" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Erro ao cadastrar</h4>
                </div>
                <div class="modal-body">
                    <p>Forneça um CNPJ válido!</p>
                    <input type="hidden" id="tipoRemocao" value="" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
@stop
@section('js')
    <script src="js/principal.js"></script>
@endsection