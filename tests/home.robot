***Settings***

Library     AppiumLibrary

***Test Cases***
Deve abrir a tela principal
    Open Application        http://localhost:4723/wd/hub       
    ...                     AutomationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/app/twp.apk      options=add_argument("--ignore-certificate-errors")
    
    Wait Until Page Contains        Training Wheels Protocol     5
    
    Close Application 
    
    