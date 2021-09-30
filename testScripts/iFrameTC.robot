*** Settings ***
Library             SeleniumLibrary 
*** Variables ***
${URL}        https://chercher.tech/practice/frames
${BROWSER}    chrome

*** Test Cases ***
Handling multiple frames
    Open Browser    ${URL}     ${BROWSER}
    ${label}    Get Text    xpath=//label/span
    Log To Console    The text is :      ${label}
   
    Select Frame    id=frame1
    Input Text    xpath=//input[@type='text']    Hello welcome 
    
    Select Frame     id=frame3
    Select Checkbox    xpath=//input[@type='checkbox']
    Unselect Frame
    
    select Frame     id=frame1
    Clear Element Text    xpath=//input[@type='text']
    Input Text    xpath=//input[@type='text']    Welcome Back
    Unselect Frame
    
        
    Select Frame    id=frame2
    Select From List By Label   animals    Big Baby Cat
    
        
          
    
    
    
    
    
    
    