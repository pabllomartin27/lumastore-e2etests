*** Settings ***
Documentation       Camada de ações da funcionalidade de login

Library             Browser

*** Keywords ***
Submit Credentials
    [Arguments]    ${user}    ${pass}

    Fill Text    css=[title=Email]    ${user}
    Fill Text    css=[title=Password]    ${pass}
    Click    xpath=//*[@class="action login primary"]/span

Toast have text for user
    [Arguments]    ${target}

    ${selector}    Set Variable    div[id="email-error"]

    Wait For Elements State    css=${selector}    visible    10
    Get Text                   css=${selector}    equal      ${target}

    Take Screenshot        selector=${selector}

Toast have text for pass
    [Arguments]    ${target}

    ${selector}    Set Variable    div[id="pass-error"]

    Wait For Elements State    css=${selector}    visible    10
    Get Text                   css=${selector}    equal      ${target}

    Take Screenshot        selector=${selector}

 Modal have text logged in
    [Arguments]    ${target}

    ${ele}    Set Variable    xpath=/html/body/div[2]/header/div[1]/div/ul/li[1]

    Wait For Elements State    ${ele}    visible    10
    
