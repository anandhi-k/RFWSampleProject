*** Settings ***
Library             SeleniumLibrary 
Suite Teardown      Close Browser   

*** Variables ***
${URL}        https://www.testandquiz.com/selenium/testing.html
${BROWSER}    chrome

*** Test Cases ***
Handle Radio and Checkbox
       open browser    ${URL}    ${BROWSER}
       Sleep    10    Waiting for Gender options to display
       Select Radio Button    gender    female
       Select Checkbox    class:Performance
        Select Checkbox    class:Automation
     
        Unselect Checkbox    class:Performance
       

