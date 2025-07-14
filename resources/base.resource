*** Settings ***
Documentation       Main

Library             Browser
Resource            ./actions.resource

*** Variables ***
${BASE_URL}         https://magento.softwaretestingboard.com/customer/account/login
${BROWSER}          tantofaz
${IS_HEADLESS}      True

*** Keywords ***
Start Browser
    New Browser    browser=${BROWSER}    headless=${IS_HEADLESS}
    New Page       ${BASE_URL}

Finish Browser
    Take Screenshot    fullPage=true