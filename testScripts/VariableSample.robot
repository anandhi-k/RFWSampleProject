*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Variables ***
${BROWSER}            chrome
${DELAY}              5
${env}    test
&{url}    qa=http://qa.demo.com    dev=http://dev.demo.com    test=http://test.demo.com


*** Test Cases ***
Print Scalar Variable Values
   
    Log    ${BROWSER}
    Log    This ${BROWSER} session has delay time of ${DELAY} Seconds 
    
Using List
    
    @{userDetail} =  Create List     John     Peter      aaa@gmail.com     9778655
    Log Many   @{userDetail}
    Log       "First Name : ",${userDetail}[1]
    Open Browser   https://www.demoblaze.com/#    chrome   
    Sleep    5s    
    @{elements_list}    Get WebElements    xpath=//h4[@class='card-title']/a
    Log Many    @{elements_list}
    Close Browser

Using Dictionary
    &{dictItems} =    Create Dictionary   a=10    b=20    c={30,40,50}
    Log     "Value of a",${dictItems.a}    
    Log To Console  "Value of b",${dictItems}[b]
    Log Many    "Items in Dictionary",&{dictItems}
    Log Many    "Value of c",${dictItems}[c]
    Log     "Item in c",${dictItems}[c][2]
    &{user} =   Create Dictionary    name=John    password=welcome123
    Log  "UserName is :",${user}[name], "Password is :",${user.password} 
    Should Be Equal    ${user}[name]    John
    &{books} =     Create Dictionary    book1={id=1, name=Robot}     book2={id=2, name=Python}
    Log     "List of books : ",${books}[book1]
   
Using Environment Variable
    Log to console    ${url.dev}
    log to console    ${url.${env}}
  
Environment variables
    Log    Current user: %{USERNAME}
    Run    %{JAVA_HOME}${/}javac

    
    
    
    
    
    

      
   