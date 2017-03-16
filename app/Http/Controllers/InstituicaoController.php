<?php

namespace App\Http\Controllers;

use App\Http\Requests\InstituicaoRequest;
use App\Instituicao;
use App\InstituicaoConvidado;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;

class InstituicaoController extends Controller
{
    public function novo()
    {
        $instituicao = Instituicao::getEmpty();
        $ufs = $this->getUfs();

        return view('convite.formulario')
            ->with('action', 'cadastro/salvar')
            ->with('instituicao', $instituicao)
            ->with('ufs', $ufs);
    }

    public function salvar(InstituicaoRequest $request)
    {
        try {
            $this->salvarInstituicao($request);

            return redirect()
                ->action('InstituicaoController@novo');

        } catch (QueryException $e) {
            $erro = $e->getMessage();
            if (strpos($erro, "for key 'cnpj_UNIQUE'") !== false) $error = 'Este CNPJ já foi cadastrado.';
            else $error = $erro;
            return redirect()
                ->back()
                ->withInput()
                ->withErrors(array($error));
        }
    }

    private function salvarInstituicao($request)
    {
        $nomesConvidados = $request->nome_convidado;
        $emailsConvidados = $request->email_convidado;
        $celularesConvidados = $request->celular_convidado;

        $request->offsetUnset('nome_convidado');
        $request->offsetUnset('email_convidado');
        $request->offsetUnset('celular_convidado');
        $request->offsetUnset('salvar');

        $dados = $request->except('_token');

        $instituicao = Instituicao::create($dados);

        if($nomesConvidados[0] != '') {
            $i = 0;
            foreach ($nomesConvidados as $nomeContato) {
                if ($nomeContato != '' || $emailsConvidados[$i] != '' || $celularesConvidados[$i] != '') {
                    $dadosContato = array(
                        "nome" => $nomeContato,
                        "email" => $emailsConvidados[$i],
                        "celular" => $celularesConvidados[$i],
                        "id_instituicao" => $instituicao->id
                    );
                    InstituicaoConvidado::create($dadosContato);
                }
                $i++;
            }
        }
    }

    /**
    * Retorna um array com todos os UFs brasileiros
    * @return array
    */
    public function getUfs()
    {
        return array("AC", "AL", "AM", "AP", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR",
            "PE", "PI", "RJ", "RN", "RO", "RS", "RR", "SC", "SE", "SP", "TO");
    }
}
