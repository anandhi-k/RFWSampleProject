*** Settings ***
Library             SeleniumLibrary 
Suite Setup        open browser    ${URL}    ${BROWSER}
Suite Teardown      Close Browser   

*** Variables ***
${URL}        https://www.seleniumeasy.com/test/basic-select-dropdown-demo.html
${BROWSER}    chrome

*** Test Cases ***
Test Case to select dropdown values
       #open browser    ${URL}    ${BROWSER}
       set selenium speed    1 second
       Select From List By Value    select-demo    Tuesday 
       Select From List By Index    select-demo    5   
       
Test Case to select values from List
    
    Select From List By Label    multi-select    New Jersey
    select from List by value    multi-select    Ohio
    select from List by index    multi-select    6
    
    @{selectedValues}=  Get Selected List Value    multi-select
    Log Many    @{selectedValues}
    
    































    
    