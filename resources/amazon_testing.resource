*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Acessar a home page do site Amazon.com.br
    Go To    https://www.amazon.com.br/

Verificar se o título da página é igual a "${title}"
    Title Should Be     ${title}