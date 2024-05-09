* Settings *
Documentation    Suite de Testes no pdv venda

Resource    ${EXECDIR}/resources/base.robot

Suite Setup        Inicia Sessão
Suite Teardown     Encerrar Sessão
Library    SikuliLibrary
    
* Test Cases *
Efetuar venda de 1 item com pagamento em Dinheiro
    Clicar em Vendas
    Digita senha OperadorCaixa    
    Selecionar Operador Caixa    opera-rapha-cristina
    Digitar CPF
    Digitar SKU
    Finalizar a Venda
    Selecionar Forma de pagamento
    Finalizar

    [Teardown]    Finaliza Teste


* Keywords *
Clicar em Vendas
    Click        vendas.png
    Sleep    2

Digita senha OperadorCaixa
    Input Text    senha-operador.png    Youcom@2
    Sleep    2
    Click         ok2.png
    Click         ok3.png
    Sleep    3

Selecionar Operador Caixa
    [Arguments]    ${OperadorCaixa}

    Click          ${OperadorCaixa}.png
    Click          ok4.png
    Sleep    2

Digitar CPF
    Input Text     cpf.png  86588457022
    Press Special Key    TAB
    Sleep    10

Digitar SKU    
    Input Text     sku.png  100433102
    Press Special Key    TAB
    Sleep    5

Finalizar a Venda
    Press Special Key    F3
    Sleep    2

Selecionar Forma de pagamento
    Click    forma-de-pagamento.png
    Sleep    2
Finalizar
    Press Special Key    F2

    Log            Gerar Reports        
    