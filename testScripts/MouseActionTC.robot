*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Mouse Right Click Test
    Open Browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window
    sleep     3s
    Open Context Menu    xpath=//span[contains(text(), 'right click me')]
    sleep    3s
    
Mouse Double Click Test
    Go To   https://testautomationpractice.blogspot.com/    
    Input Text    id=field1    Hello Welcome
    Double Click Element    //button[contains(text(), 'Copy Text')]   
    sleep    3s
    
Mouse Drag and Drop Test
     Drag And Drop    id=draggable    id=droppable
     sleep    3s
     Close Browser
     