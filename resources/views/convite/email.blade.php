<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge' />
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
    <meta name='viewport' content='width=device-width' >
    <title></title>
</head>
<body>
<body>
<div style='width: 520px; background-color: #f0f0f0; border: 5px solid #E58100;'>
    <img src='<?php echo $message->embed('email/topo.jpg'); ?>'><div style='width: 516px; float: none; margin: 0 auto;'>

        <div style="width: 439px; margin: 0px 36px;">
            <div>
                <h1 style='font-family: "Trebuchet MS",serif;font-weight: normal; font-size: 20px;'>Confirmo a participação na Primeira Etapa das </h1>
            </div>
            <div>
                <h1 style='font-family: "Trebuchet MS",serif;background: #E58100; font-weight: 400; color: #ffffff; font-size: 25px; width: 400px; margin: 0; padding: 5px 5px 5px 5px;'>AÇÕES PARA FORTALECIMENTO DAS</h1>
                <h1 style='font-family: "Trebuchet MS",serif;background: #E58100; font-weight: 400; color: #ffffff; font-size: 25px; width: 350px; margin: 0; padding: 5px 5px 5px 5px;'> ORGANIZAÇÕES DA SOCIEDADE</h1>
                <h1 style='font-family: "Trebuchet MS",serif;background: #E58100; font-weight: 400; color: #ffffff; font-size: 25px; width: 180px; margin: 0; padding: 5px 5px 5px 5px;'> CIVIL DO CEARÁ</h1>
            </div>
            <h1 id='inxiridao1' style='font-family: "Trebuchet MS",serif;background-color: #E58100; font-size: 17px; font-weight: bold; padding: 5px 5px 5px 8px; color: #ffffff; width: 225px'>Data: <span style="font-weight: normal"> 04 de abril de 2017,</span></h1>
            <h1 id='inxiridao2' style='font-family: "Trebuchet MS",serif;background-color: #E58100;font-size: 17px; font-weight: bold; padding: 5px 5px 5px 8px; color: #ffffff; margin-top:  -17px; width: 438px'>Local: <span style="font-weight: normal">sede do ITEVA - Rodovia CE 040, s/n - Aquiraz/CE</span></h1>
            <div style='margin-top: 25px;'>
                <p>
                <div style='width: 65px; height: 5px; background-color: #E58100;'></div>
                <h1 style='font-family: "Trebuchet MS",serif; font-weight: 600;font-size: 19px;margin-top: 15px;margin-bottom: 15px;'>DINÂMICA DE ESTRUTURAÇÃO</h1>
                <p style='font-family: "Trebuchet MS",serif; font-weight: 600; margin-bottom: 5px;'>Instituição:</p>
                <p style='width: 434px; height: 10px'  type="text">{{$instituicao->nome}}</p>

                <p style='font-family: "Trebuchet MS",serif; font-weight: 600; margin-bottom: 5px; margin-top: 35px;'>Integrantes:</p>

                @foreach($instituicao->representantes as $representante)
                    <p style='width: 434px; height: 10px; margin-bottom: 12px;'  type="text">{{$representante->nome}}</p>
                @endforeach

                <img style='width: 478px;' src='<?php echo $message->embed('email/rodape.jpg'); ?>'>
            </div>
        </div>
    </div>
</div>
</div>
</body>