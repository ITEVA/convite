<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InstituicaoConvidado extends Model
{
    public $timestamps = false;
    protected $guarded = ['id'];
    protected $table = 'instituicao_convidado';
}
