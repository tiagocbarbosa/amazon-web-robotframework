*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MENU_LIVROS}  //*[@id="nav-xshop"]/a[7]
${LIVROS_TITLE}     //h2[contains(.,'Loja de Livros')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Aguardar página carregar por completo
    Wait For Condition	return document.readyState == "complete"

Acessar a home page do site Amazon.com.br
    Go To    https://www.amazon.com.br/
    Aguardar página carregar por completo

Verificar se o título da página é igual a "${title}"
    Aguardar página carregar por completo
    Title Should Be     ${title}

Entrar no menu "Livros"
    Wait Until Element Is Visible    ${MENU_LIVROS}
    Click Element   locator=${MENU_LIVROS}

Verificar se aparece o título "Loja de Livros"
    Wait Until Element Is Visible    ${LIVROS_TITLE}

Verificar se aparece a categoria "Mais vendidos"
    Wait Until Element Is Visible    //*[@id="sobe_d_b_2_2"]/a

Digitar o nome de produto "${product_name}" no campo de pesquisa
    Input Text  locator=twotabsearchtextbox     text=${product_name}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${product_name}"
    Wait Until Element Is Visible    (//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${product_name}')])[1]

Adicionar o produto "${product_name}" no carrinho
    Click Element    (//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${product_name}')])[1]
    Aguardar página carregar por completo
    Click Element    add-to-cart-button

Verificar se o produto "${product_name}" foi adicionado com sucesso
    Wait Until Element Is Visible    //*[@id="sw-all-product-variations"]/ul/li/span/span[2]