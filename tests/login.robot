*** Settings ***
Documentation       Suíte de testes de login

Resource            ../resources/base.resource

Test Setup          Start Browser
Test Teardown       Finish Browser

*** Test Cases ***
Senha incorreta
    Submit credentials         soham.dean@example.com    123456
    Toast have text    The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.

Usuário deve ser obrigatório
    Submit credentials         ${EMPTY}    123456
    Toast have text    This is a required field.

Senha deve ser obrigatória
    Submit credentials         teste123    ${EMPTY}
    Toast have text    This is a required field.

Login com sucesso
    [Tags]    smoke

    Submit credentials      soham.dean@example.com    Sohamdean2025
    Modal have text         Welcome, Soham Dean! 
