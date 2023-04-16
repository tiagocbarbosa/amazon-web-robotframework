*** Settings ***
Resource    ../resources/amazon_testing.resource
Test Setup  Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Livros"
    [Documentation]     Esse teste verifica o menu "Livros" do site Amazon.com.br
                ...     e verifica a categoria "Mais vendidos"
    [Tags]  menus   categorias
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página é igual a "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Livros"
    Verificar se o título da página é igual a "Livros | Amazon.com.br"
    Verificar se aparece o título "Loja de Livros"
    Verificar se aparece a categoria "Mais vendidos"

Caso de Teste 02 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compra
    [Tags]  adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

Caso de Teste 03 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Remover o produto "Console Xbox Series S" do carrinho
    Verificar se o carrinho fica vazio