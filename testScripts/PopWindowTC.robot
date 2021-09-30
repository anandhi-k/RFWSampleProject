*** Settings ***
Library     SeleniumLibrary      

*** Variables ***

*** Test Cases ***
Handle Tabbed Window
    Open Browser    https://www.stqatools.com/demo/Windows.php    chrome
    Maximize Browser Window
    Click Button    xpath=//button[contains(text(), 'new Tab')]
    ${childWinHandle}      Get Window Handles    
    Switch Window    ${childWinHandle}[0]

    Sleep    5s  
    Click Element    xpath=//span[@class='menu-text' and contains(text(), 'Java')][1]
    Sleep    5s   
    Close Window
    Close Browser
   

        
Handle Browser Window
    Open Browser    https://www.stqatools.com/demo/Windows.php    chrome
    Click Button    xpath=//button[contains(text(), 'new Window')]
    ${windowIDs}      Get Browser Ids
    Log    ${windowIDs}
    Switch Browser    2
    Sleep     5s
    Click Button     xpath=//button[contains(text(), 'Message Window')]
    Sleep     5s
    Close All Browsers
    
    
    
    