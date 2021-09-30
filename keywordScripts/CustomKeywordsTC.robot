*** Settings ***
Library    SeleniumLibrary 

*** Variables ***

*** Test Cases ***
Sample Test Case
     ${sum}=    Add    4    6
    
     Should Be Equal As Integers    10    ${sum}    
     Print Log    Sum is ${sum}
     ${changedName}=    Change Nickname    TestUser    RobotTestUser   
     Print Log    ${changedName}

*** Keywords ***  
Add
    [Arguments]    ${value1}     ${value2}
    ${sum}=    Evaluate    ${value1} + ${value2}      
    [Return]    ${sum}
 
Change Nickname
    [Arguments]    ${oldname}    ${newname}
    [Return]    ${newname}
    
Print Log
    [Arguments]    ${anyText}
    Log To Console    The text is :    ${anyText}    


  

    
