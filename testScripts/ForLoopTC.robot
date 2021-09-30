*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
For Loop Test
       Open Browser    https://www.testandquiz.com/selenium/testing.html    chrome
       Maximize Browser Window
       @{inputTags}    Get WebElements    xpath=//input
       Log Many    @{inputTags}
       FOR    ${i}    IN    @{inputTags}
              ${elementName}   Get Element Attribute    ${i}    name
              Log    ${elementName}   
        END
        
        @{employeeList}     Create List  11    222    33    444    555
        Log to console    List of Employees are
        FOR      ${i}  IN    @{employeeList}
                Log To Console   ${i}
                Exit For Loop If    ${i}==33
        END
        Close Browser
      
For Loop In Range Test
    Open Browser   https://www.demoblaze.com/#    chrome   
    Sleep    5s    
    @{elements_list}    Get WebElements    xpath=//h4[@class='card-title']/a
    ${itemcount}    Get Element Count    xpath=//h4[@class='card-title']/a
    Log To Console   ${itemcount}
    Log To Console   "Elements are:",@{elements_list}    
    FOR    ${element}    IN    @{elements_list}
        ${elementText}     Get Text    ${element}
        Log     ${elementText}
        Run Keyword If    '${elementText}' == 'Samsung galaxy s7'    Click Element    ${element}
    
    END    
    Close Browser
  