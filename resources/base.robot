* Settings *
Documentation       Tudo deve comçar por aqui

Library       SikuliLibrary

* Keywords *
Carrega os Elementos do App
    Add Image Path    ${EXECDIR}\\resources\\elements

Inicia Sessão
    Carrega os Elementos do App
    Double Click            linxpos.png
    Sleep    2

    Input Text    senha-db  @Y0uc0m#
    
    Click                   entrar.png
    Sleep    6

    Click                   ignorar.png

    Click                   ok1.png
    Sleep    5
Encerrar Sessão
    Stop Remote Server

Finaliza Teste
    Capture Screen
    Close Application        mstsc.exe
