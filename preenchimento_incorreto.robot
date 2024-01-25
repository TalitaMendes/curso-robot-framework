*** Settings ***
Resource         ../Resources/main.robot
Test Setup       Dado que eu acesse o Organo
Task Teardown    Fechar o navegador

*** Variables ***
${BOTAO_CARD}             id:form-botao

*** Test Cases ***
Verificar se um campo obrigatório não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatório
    Dado que eu clique no botão criar card 
    Então sistema deve apresentar mensagem de campo obrigatório

