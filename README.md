# amazon-web-robotframework
The application is a test automation of the website [Amazon.com.br](https://www.amazon.com.br/), the Brazilian version of [Amazon.com](https://www.amazon.com).

The automation uses Robot Framework, Selenium Webdriver and Python technologies.

Important: the Amazon.com.br is constantly changing, so the HTML elements XPATH, names and IDs. Because of this it may be necessary change the elements search in the [/resources/amazon_testing.resource](https://github.com/tiagocbarbosa/amazon-web-robotframework/tree/main/resources/amazon_testing.resource) file.

## How to use
To use this project, clone it on your machine and open it on your favorite IDE.

In the [/tests](https://github.com/tiagocbarbosa/amazon-web-robotframework/tree/main/tests) dir you will find the Tests Scenarios of the web application; in the [/resources](https://github.com/tiagocbarbosa/amazon-web-robotframework/tree/main/resources) you will find the scenarios' definition.

To execute the application, check if you have downloaded and configured Python, Robot Framework and the SeleniumLibrary on your machine. To more information, check the [References](https://github.com/tiagocbarbosa/amazon-web-robotframework#References) section.

Open your favorite terminal and execute the command ``robot -d results/ tests/``, the output must be something similar to it:

````bash
==============================================================================
Amazon Testing
==============================================================================
Caso de Teste 01 - Acesso ao menu "Livros" :: Esse teste verifica ... | PASS |
------------------------------------------------------------------------------
Caso de Teste 02 - Adicionar Produto no Carrinho :: Esse teste ver... | PASS |
------------------------------------------------------------------------------
Caso de Teste 03 - Remover Produto do Carrinho :: Esse teste verif... | PASS |
------------------------------------------------------------------------------
Amazon Testing                                                        | PASS |
3 tests, 3 passed, 0 failed
==============================================================================
Output:  C:\{dir}\amazon-web-robotframework\results\output.xml
Log:     C:\{dir}\amazon-web-robotframework\results\log.html
Report:  C:\{dir}\amazon-web-robotframework\results\report.html
````

You can see the tests report by opening the file ``/results/report.html`` that will be created after the tests execution.

## Technologies
- Robot Framework;
- SeleniumLibrary;
- Python.

## References
[Robot Framework](https://robotframework.org/)

[SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/)