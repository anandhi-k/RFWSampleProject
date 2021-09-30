*** Settings ***
Library             SeleniumLibrary 
Suite Teardown      Close Browser   

*** Variables ***
${URL}        https://www.testandquiz.com/selenium/testing.html
${BROWSER}    chrome

*** Test Cases ***
Using Selenium Timeout
       open browser    ${URL}    ${BROWSER}
       ${timeoutValue}=     Get Selenium Timeout
       Log To Console    ${timeoutValue}    
       Wait Until Element Is Visible    gender     10     #only for this step
          Wait Until Page Contains    Automation    
       # 'practice' element is not available on this page.
       # Wait Until Page Contains    practice 20
       set selenium Timeout   10 seconds
       Select Radio Button    gender    female
       Select Checkbox    class:Performance
       Select Checkbox    class:Automation
       ${timeoutValue}     Get Selenium Timeout
       Log To Console    ${timeoutValue}    
       Click Button    xpath://button[contains(text(), 'Generate Alert Box')]
       Alert Should Be Present    hi, JavaTpoint Testing    
Using Selenium implicit Timeout   
       open browser    ${URL}    ${BROWSER}
       ${implicitTimeout}     Get Selenium Implicit Wait
       Log To Console    ${implicitTimeout}   
       Set Selenium Implicit Wait    15 
       Select Radio Button    gender    female
       Select Checkbox    class:Performance
       Select Checkbox    class:Automation
       Unselect Checkbox    class:Performance
       ${implicitTimeout}     Get Selenium Implicit Wait
       Log To Console    ${implicitTimeout}    

