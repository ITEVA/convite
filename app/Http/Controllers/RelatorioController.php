<?php

namespace App\Http\Controllers;

use App\Instituicao;
use App\InstituicaoConvidado;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers;
use App\User;
use App\Pedido;
use App\ProdutoPedido;
use Illuminate\Support\Facades\Auth;
use Anouar\Fpdf\Fpdf;
use Illuminate\Support\Facades\DB;


class RelatorioController extends Controller
{
    public function usuarios(){
        $instituicoes = Instituicao::where('id', '>', '0')->orderBy('nome', 'asc')->get();
        $participantes = InstituicaoConvidado::all();

        $contInstituicoes = count($instituicoes);
        $contPessoas = count($participantes);

        $pdf = new FPDF("L", "pt", "A4");

        $pdf->SetTitle('Usuários cadastrados');

        //Adiciona uma nova pagina para cada colaborador
        $pdf->AddPage();

        //Cabeçalho
        $this->header($pdf, $contInstituicoes, $contPessoas);

        $pdf->SetFont('arial', '', 10);
        if(count($instituicoes) > 0) {
            $pdf->SetY($pdf->GetY() + 20);
            foreach ($instituicoes as $instituicao) {
                $nomeInstituicao = $this->formataDescricao($instituicao->nome, 40);
                $descricaoQ = explode("\n", $nomeInstituicao);

                if($pdf->GetY() + count($descricaoQ) * 20 > 450){
                    //Rodapé
                    $this->footer($pdf);

                    $pdf->AddPage();
                    $pdf->SetY(30);
                    //Cabeçalho
                    $this->header($pdf, $contInstituicoes, $contPessoas);
                    $pdf->SetY($pdf->GetY() + 20);
                }

                foreach ($instituicao->representantes as $representante) {
                    $pdf->SetX(20);
                    $pdf->Cell(250, 14, $descricaoQ[0], 'T, L, R', 0, "C");
                    $pdf->Cell(256, 14, $representante->nome, 'T, L, R', 0, "C");
                    $pdf->Cell(200, 14, $representante->email, 'T, L, R', 0, "C");
                    $pdf->Cell(95, 14, $representante->celular, 'T, L, R', 0, "C");
                    $pdf->SetY($pdf->GetY() + 14);

                    for ($i = 1; $i < count($descricaoQ); $i++) {
                        $pdf->SetX(20);
                        $pdf->Cell(250, 14, $descricaoQ[$i], 'L, R', 0, "C");
                        $pdf->Cell(256, 14, '', 'L, R', 0, "C");
                        $pdf->Cell(200, 14, '', 'L, R', 0, "C");
                        $pdf->Cell(95, 14, '', 'L, R', 0, "C");
                        $pdf->SetY($pdf->GetY() + 14);
                    }
                }

            }
        }

        //Rodape
        $this->footer($pdf);

        $pdf->Output();
        exit;
    }

    public function header($pdf, $contInstituicoes, $contPessoas){
        //Desenha o cabeçalho do relatorio
        $pdf->Image('logoBranca.png');
        $pdf->SetXY(245, 80);
        $pdf->SetFont('arial', '', 10);
        $pdf->Line(20, 80 , 820, 80);

        $pdf->SetXY(19, 100);
        $pdf->SetFont('arial', 'B', 10);
        $pdf->Cell(820, 14, "INSTITUIÇÕES CADASTRADAS: " .$contInstituicoes, 0, 0);

        $pdf->SetXY(19, 120);
        $pdf->SetFont('arial', 'B', 10);
        $pdf->Cell(820, 14, "PESSOAS CADASTRADAS: " .$contPessoas, 0, 0);

        //Tabela total de produtos
        $pdf->SetXY(20, 145);
        $pdf->SetFont('arial', 'B', 10);
        $pdf->Cell(250, 20, 'Nome Instituição', 1, 0, "C");
        $pdf->Cell(256, 20, 'Nome', 1, 0, "C");
        $pdf->Cell(200, 20, 'E-mail', 1, 0, "C");
        $pdf->Cell(95, 20, 'Celular', 1, 0, "C");
    }

    public function footer($pdf){

        $pdf->Line(20, $pdf->GetY(), 820, $pdf->GetY());
        $pdf->SetAutoPageBreak(5);
        $pdf->SetFont('arial', '', 10);
        $pdf->SetXY(20, -45);
        $pdf->Cell(801, 15, "Rodovia CE - 040 s/n - Aquiraz - CE - cep 61.700-000 - cx. postal 66 - fone (85) 3362-3210 - e-mail iteva@iteva.org.br", 'T', 0, 'C');
        $pdf->SetXY(20, -30);
        $pdf->Cell(801, 15, "www.iteva.org.br", 0, 0, 'C');
    }

    public function formataDescricao($texto, $quantidade)
    {
        $textoResumo = strip_tags($texto);
        $pos = 0;
        $mod = 0;
        $textoResumoBr = "";
        while ($pos < strlen($textoResumo)) {
            if ($mod % $quantidade != 0 || $mod == 0) {
                $textoResumoBr .= substr($textoResumo, $pos, 1);
                $mod++;
            }
            else {
                while(substr($textoResumoBr, strlen($textoResumoBr)-1, 1) != ' '){
                    $textoResumoBr = substr($textoResumoBr, 0, strlen($textoResumoBr)-1);
                    $pos--;
                }
                $textoResumoBr .= "\n";
                $pos--;
                $mod = 1;
            }
            $pos++;
        }

        return $textoResumoBr;
    }
}
