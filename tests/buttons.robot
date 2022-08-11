***Settings***

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Deve realizar um clique simples
    [tags]  short_click
    Go To Short Click
    
    Click Element               id=io.qaninja.android.twp:id/short_click
    Wait Until Page Contains    Isso é um clique simples
    
Deve realizar um clique longo
    [tags]  long_click
    #para rodar incluindo a tag o comando fica (robot -d ./logs -i long_click tests\buttons.robot)
    #para rodar excluindo uma tag invés do i, coloco -e (+ o nome da tag)
    Go To Long Press
    
    Long Press                 id=io.qaninja.android.twp:id/long_click      1000
    #o valor da duration está em milliseconds (1000ms = 1s)
    Wait Until Page Contains   CLIQUE LONGO OK 