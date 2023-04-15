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