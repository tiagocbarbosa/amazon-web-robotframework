*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MENU_LIVROS}  //*[@id="nav-xshop"]/a[7]
${LIVROS_TITLE}
#${MENU_ELETRONICOS}   //a[@href='/prime?ref_=nav_cs_primelink_member'][contains(.,'Prime')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    https://www.amazon.com.br/

Verificar se o título da página é igual a "${title}"
    Wait For Condition	return document.readyState == "complete"
    Title Should Be     ${title}

Entrar no menu "Livros"
    Wait Until Element Is Visible    ${MENU_LIVROS}
    Click Element   locator=${MENU_LIVROS}

Verificar se aparece o título "Loja de Livros"
    Wait Until Element Is Visible    ${LIVROS_TITLE}

Verificar se aparece a categoria "Mais vendidos"
    Wait Until Element Is Visible    //*[@id="sobe_d_b_2_2"]/a