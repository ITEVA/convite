<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function()
{
    return view('convite.inicio');
});


Route::get('/relatorio/NjY2DQo=', 'RelatorioController@usuarios');
Route::get('/relatorio/NiY2DQo=', 'RelatorioController@usuarios2');
Route::get('/relatorio/NkY2DQo=', 'RelatorioController@usuariosPresentes');
Route::get('/cadastro', 'InstituicaoController@novo');
Route::post('/cadastro/salvar', 'InstituicaoController@salvar');
Route::get('/sucesso', 'InstituicaoController@novo');
Route::get('/email/{id}/{email}', 'InstituicaoController@email');

Route::get('/presenca', 'InstituicaoController@listar');
Route::get('/presenca/{id}', 'InstituicaoController@presenca');