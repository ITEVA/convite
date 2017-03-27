<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Instituicao extends Model
{
    public $timestamps = false;
    protected $guarded = ['id'];
    protected $table = 'instituicao';

    public static function getEmpty(){
        return (object)[
            'cnpj' => '',
            'nome' => '',
            'email' => '',
            'telefone' => '',
            'nome_convidado' => '',
            'email_convidado' => '',
            'celular_convidado' => '',
            'endereco' => '',
            'numero' => '',
            'complemento' => '',
            'uf' => 'CE',
            'cidade' => '',
            'bairro' => ''
        ];
    }

    public function representantes()
    {
        return $this->hasMany('App\InstituicaoConvidado', 'id_instituicao')->orderBy('nome', 'asc');
    }
}
