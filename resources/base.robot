#aqui em base devem ficar todos os dados que serão usados em comum nos testes.

***Settings***

Library         AppiumLibrary
Library         libs/extend.py
Resource        helpers.robot


***Keywords***
Open Session
    Set Appium Timeout      5 
    Open Application        http://localhost:4723/wd/hub       
    ...                     AutomationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/app/twp.apk      options=add_argument("--ignore-certificate-errors")
    Get Started 
    
Close Session
    Capture Page Screenshot
    Close Application

