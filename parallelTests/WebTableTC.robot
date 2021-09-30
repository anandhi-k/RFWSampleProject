*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

*** Test Cases ***
WebTable Validations
    Open Browser    https://www.seleniumeasy.com/test/table-sort-search-demo.html    chrome 
    ${row}    Get Element Count    xpath=//table[@id='example']/tbody/tr
    ${col}    Get Element Count    xpath=//table[@id='example']/thead/tr/th
    
    Log To Console    "Number of Rows: ",${row}    
    Log To Console    "Number of Col : ",${col}    
    
    # To get data from particular cell
    # ${cellData}     get text    xpath=//table[@id='example']/tbody/tr[3]/td[3]
    ${cellData}     Get Table Cell    xpath=//table[@id='example']    4    3    
    Log To Console    "Data in a cell(4,3): ",${cellData}
    
    Table Cell Should Contain    xpath=//table[@id='example']    4    3     Tokyo
    
    # Verify Table specific column header
    Table Column Should Contain    xpath=//table[@id='example']    3    Office  
    
    #Verify specific row contain given data
    Table Row Should Contain    xpath=//table[@id='example']    8    Edinburgh   
    
    # Table Should Contain    xpath=//table[@id='example']    Pre-Sales Support       
    # To make it fail
    Table Should Contain    xpath=//table[@id='example']    Marketing        
     Close Browser
    
    
   