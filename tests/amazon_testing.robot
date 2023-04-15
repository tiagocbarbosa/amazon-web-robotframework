*** Settings ***
Resource    ../resources/amazon_testing.resource
Test Setup  Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]     Esse teste verifica o menu "Eletrônicos" do site Amazon.com.br
                ...     e verifica a categoria "Computadores e Informática"
    [Tags]  menus   categorias
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página é igual a "Amazon.com.br | Tudo pra você, de A a Z."
#    Entrar no menu "Eletrônicos"
#    Verificar se aparece o título "Eletrônicos e Tecnologia"
#    Verificar se o título da página é igual a "Eletrônicos e Tecnologia | Amazon.com.br"
#    Verificar se aparece a categoria "Computadores e Informática"