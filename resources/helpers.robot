#aqui em helpers ficam todos os dados que usarei em algum teste 
#e não necessariamente em todos os testes
#Quando for usar dados que serão usados em todos os testes eles devem ficar no arquivo base.

***Settings***

Documentation       Aqui teremos as KeyWords helpers 

***Variables***
${HAMBURGER_MENU}     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]  
${START}              COMEÇAR 
${NAV_VIEW}           id=io.qaninja.android.twp:id/navView   

***Keywords***

Get Started 
    Wait Until Page Contains            ${START}      
    Click Text                          ${START}  
    
Open Nav
    Wait Until Element Is Visible       ${HAMBURGER_MENU}      
    Click Element                       ${HAMBURGER_MENU} 
    Wait Until Element Is Visible       ${NAV_VIEW}  
    
Go to FORMS Page
    Open Nav
    
    Click Text  FORMS
    Wait Until Page Contains    FORMS
    
Go To Login Form
    Go to FORMS Page
    
    Click Text  LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?
    
Go To Radio Buttons
    Open Nav
    
    Click Text                  INPUTS
    Wait Until Page Contains    INPUTS 
    
    Click Text                  BOTÕES DE RADIO
    Wait Until Page Contains    Escolha sua linguagem preferida    

Go To Checkbox Buttons
    Open Nav
    
    Click Text                  INPUTS
    Wait Until Page Contains    INPUTS 
    
    Click Text                  CHECKBOX
    Wait Until Page Contains    Marque as techs que usam Appium

Go To Buttons Page

    Open Nav
    
    Click Text                  BOTÕES

Go To Short Click
    Go To Buttons Page
    
    Wait Until Page Contains    CLIQUE SIMPLES
    
    Click Text                  CLIQUE SIMPLES
    Wait Until Page Contains    Botão clique simples
    
Go To Long Press
    Go To Buttons Page
    
    Wait Until Page Contains    CLIQUE LONGO
    
    Click Text                  CLIQUE LONGO
    Wait Until Page Contains    CLIQUE AQUI
    
Go To Registration Form
    Go to FORMS Page
    
    Click Text                  CADASTRO
    Wait Until Page Contains    Bem-vindo, crie sua conta.

Go To Avengers list Page
    Open Nav
    Wait Until Page Contains    AVENGERS
    Click Text                  AVENGERS

    Wait Until Page Contains    LISTA
    Click Text                  LISTA
    
    Wait Until Page Contains    Capitão América
