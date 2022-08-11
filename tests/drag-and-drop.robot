
***Settings***

Resource    ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Deve mover o homem-aranha para o topo da lista
    Go To Avengers list Page
    
    Drag And Drop       io.qaninja.android.twp:id/drag_handle       4       0
    Sleep               5