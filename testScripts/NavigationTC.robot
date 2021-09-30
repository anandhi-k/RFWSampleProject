*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Browser Navigation Test
    Open Browser    https://demo.opencart.com/    chrome
    Input Text    name=search    Phone
    Click Button    xpath=//span/button[@type='button']
    
    Capture Element Screenshot    xpath=//img[@title='iPhone']    ./element.png
    
    ${pageLocation}     Get Location
    Log To Console    ${pageLocation}
           
    Go Back
    Sleep     5s
    
    Go to    ${pageLocation}
    Sleep    5s
    
    Maximize Browser Window
    Capture Page Screenshot    ./page.png
    Close Browser
