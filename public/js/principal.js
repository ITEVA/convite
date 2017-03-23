$(document).ready(function () {
    $('.cnpj').mask('00.000.000/0000-00');
    $('.celular').mask('(00) 0 0000-0000');
    $('.fixo').mask('(00) 0000-0000');

    $("#salvarInstituicao").click(function (e) {
        e.preventDefault();
        var salvar = true;

        /*var cnpj = $('#cnpj').val().replace(/[^\d]+/g, '');

        if (!validarCNPJ(cnpj)) {
            salvar = false;
            $("#erroCnpj").modal();
        }*/

        if (salvar) {
            $('.obrigatorio').each(function () {
                if ($(this).val() == '') {
                    salvar = false;
                    $("#erroObrigatorio").modal();
                }
            });
        }

        if (salvar) {
            $('.fixo').each(function () {
                if ($(this).val() != '') {
                    if (((($(this).val()).toString()).length) < 14) {
                        salvar = false;
                        $("#erroTelefone").modal();
                    }
                }
            });
        }

        if (salvar) {
            $('.obrigatorioRepre').each(function () {
                if ($(this).val() == '') {
                    salvar = false;
                    $("#erroRepresentante").modal();
                }
            });
        }

        if (salvar) {
            $('.celular').each(function () {
                if ($(this).val() != '') {
                    if (((($(this).val()).toString()).length) < 16) {
                        salvar = false;
                        $("#erroCelular").modal();
                    }
                }
            });
        }

        if (salvar) {
            $("#formConvite").submit();
        }
    });
});

function validarCNPJ(cnpj) {

    cnpj = cnpj.replace(/[^\d]+/g,'');

    if(cnpj == '') return false;

    if (cnpj.length != 14)
        return false;

    // Elimina CNPJs invalidos conhecidos
    if (cnpj == "00000000000000" ||
        cnpj == "11111111111111" ||
        cnpj == "22222222222222" ||
        cnpj == "33333333333333" ||
        cnpj == "44444444444444" ||
        cnpj == "55555555555555" ||
        cnpj == "66666666666666" ||
        cnpj == "77777777777777" ||
        cnpj == "88888888888888" ||
        cnpj == "99999999999999")
        return false;

    // Valida DVs
    tamanho = cnpj.length - 2;
    numeros = cnpj.substring(0,tamanho);
    digitos = cnpj.substring(tamanho);
    soma = 0;
    pos = tamanho - 7;
    for (i = tamanho; i >= 1; i--) {
        soma += numeros.charAt(tamanho - i) * pos--;
        if (pos < 2)
            pos = 9;
    }
    resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
    if (resultado != digitos.charAt(0))
        return false;

    tamanho = tamanho + 1;
    numeros = cnpj.substring(0,tamanho);
    soma = 0;
    pos = tamanho - 7;
    for (i = tamanho; i >= 1; i--) {
        soma += numeros.charAt(tamanho - i) * pos--;
        if (pos < 2)
            pos = 9;
    }
    resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
    if (resultado != digitos.charAt(1))
        return false;

    return true;

}