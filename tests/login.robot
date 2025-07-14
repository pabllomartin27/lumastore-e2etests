*** Settings ***
Documentation       Suíte de testes de login

Resource            ../resources/base.resource

Test Setup          Start Browser
Test Teardown       Finish Browser

*** Test Cases ***



Usuário deve ser obrigatório
    Submit credentials         ${EMPTY}    123456
    Toast have text for user    This is a required field.

Senha deve ser obrigatória
    Submit credentials         teste123    ${EMPTY}
    Toast have text for pass   This is a required field.

Login com sucesso
    [Tags]    smoke

    Submit credentials      soham.dean@example.com    Sohamdean2025
    Modal have text logged in    visible
