***Settings***

Resource    ../resources/base.robot

#test setup é o before  de cada teste
Test Setup      Open Session 
#test teardown é o after de cada teste
Test Teardown   Close Session 

***Variables***
#Variavel simples
${NOME}     Natalya
#Variavel lista (array)
@{CARROS}   Civic   Lancer  Brasilia
#Variaveis dicionarios de dados (herdado do python)
&{CARRO}    nome=Lancer     modelo=Evolution    ano=2020

${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle 


***Test Cases***
Deve acessar a tela Dialogs
    
    Open Nav      
    
    Click Text                      DIALOGS
    Wait Until Element Is Visible   ${TOOLBAR_TITLE}    
    Element Text Should Be          ${TOOLBAR_TITLE}     DIALOGS  
    
    
Deve acessar a tela de formulários
    
    Open Nav
    
    Click Text                      FORMS
    Wait Until Element Is Visible   ${TOOLBAR_TITLE}    
    Element Text Should Be          ${TOOLBAR_TITLE}     FORMS  
    
    
Deve acessar a tela de Vingadores
    
    Open Nav   
    
    Click Text                      AVENGERS
    Wait Until Element Is Visible   ${TOOLBAR_TITLE}    
    Element Text Should Be          ${TOOLBAR_TITLE}     AVENGERS  
    

