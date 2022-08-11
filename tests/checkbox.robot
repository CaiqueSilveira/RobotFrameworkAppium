***Settings***

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Deve marcar as opções Robot Framework e Python

    Go To Checkbox Buttons
    
    ${elementRobot}=                Set Variable    xpath=//android.widget.CheckBox[contains(@text,'Robot Framework')] 
    ${boxOfCheckboxes}=             Set Variable    id=io.qaninja.android.twp:id/rvContainer
    ${elementPython}=               Set Variable   xpath=//android.widget.CheckBox[contains(@text,'Python')]  
    
    Click Element                   ${elementRobot}
    #aqui acontece uma mudança de estado do elemento para checked false para true
    #preciso fazer um checkpoint para o elemento pai dos checkboxes
    #para resolver o erro de cache of elements utilizo essa dica
    Wait Until Element Is Visible   ${boxOfCheckboxes}
    Element Attribute Should Match  ${elementRobot}      checked     true
    
    Click Element                   ${elementPython}
    Wait Until Element Is Visible   ${boxOfCheckboxes}
    Element Attribute Should Match  ${elementPython}      checked     true