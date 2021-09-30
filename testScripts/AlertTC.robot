*** Settings ***
Library             SeleniumLibrary 
*** Variables ***
${URL}        https://www.seleniumeasy.com/test/javascript-alert-box-demo.html
${BROWSER}    chrome

*** Test Cases ***
Handling normal alert
    Open Browser    ${URL}    ${BROWSER}
    Click Button    xpath=//button[contains(text(), 'Click me!')][1]
    Set Selenium Speed    2
    Handle Alert    ACCEPT         
    
    Click Button    xpath=//button[contains(text(),'Click me!') and @class='btn btn-default btn-lg']    
    # Set Selenium Speed    2
    Handle Alert    dismiss
    
    Click Button     xpath=//button[contains(text(),'Click for Prompt Box')]
    Set Selenium Speed    2
    Input Text Into Alert    Hello Welcome    
    Handle Alert    accept 
    
    Close Browser  
    