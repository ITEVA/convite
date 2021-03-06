<?php

namespace App\Http\Controllers;

use App\Http\Requests\InstituicaoRequest;
use App\Instituicao;
use App\InstituicaoConvidado;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class InstituicaoController extends Controller
{
    public function listar () {
        $pessoas = InstituicaoConvidado::where('id', '>', '0')->orderBy('nome', 'asc')->get();

        return view('convite.listagem')
            ->with('pessoas', $pessoas);
    }

    public function presenca ($id) {
        $pessoas = InstituicaoConvidado::where('id', '>', '0')->orderBy('nome', 'asc')->get();
        date_default_timezone_set('America/Fortaleza');

        $dados = array (
            "presente" => "1",
            "data_chegada" => date('Y-m-d H:i:s')
        );

        $pessoa = InstituicaoConvidado::find($id);
        $pessoa->fill($dados);
        $pessoa->save();

        return redirect("presenca");
    }

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

            return view('convite.sucesso');

        } catch (QueryException $e) {
            $erro = $e->getMessage();
            if (strpos($erro, "for key 'cnpj_UNIQUE'") !== false) $error = 'Instituição já cadastrada, por favor entrar em contato através do email: iteva@iteva.org.br ou pelo telefone: (85) 3362-3210.';
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

    public function email($id, $email)
    {
        $instituicao = Instituicao::find($id);

        if (count($instituicao) > 0) {
            Mail::send('convite.email', ['instituicao' => $instituicao], function ($m) use ($instituicao, $email) {
                $m->from('iteva@iteva.org.br', 'Iteva');

                $m->to($email, $instituicao->nome)->subject('Confirmação de convite');
            });
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
