***Settings***

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${SPINNER}=     	   id=io.qaninja.android.twp:id/spinnerJob  
${LIST_OPTIONS}=       class=android.widget.ListView


***Test Cases***
Deve selecionar o perfil de QA
    Go To Registration Form
    
    Select a Job        QA
    
Deve selecionar o perfil de DevOps
    Go To Registration Form
    
    Select a Job        DevOps
    
***Keywords***
Select a Job
    [Arguments]                     ${target}
    Click Element                   ${SPINNER}
    Wait Until Element Is Visible   ${LIST_OPTIONS}
    Click Text                      ${target}