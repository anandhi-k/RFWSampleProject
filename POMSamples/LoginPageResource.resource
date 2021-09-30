*** Settings ***
Library     SeleniumLibrary    
Resource    LoginPageResource.resource
Variables    loginPage.py

*** Variables ***
${site}        https://www.demoblaze.com/index.html
${browser}     chrome
${username}    Anandhi
${pwd}         Anandhi

*** Keywords ***
LaunchApp
     Open Browser    ${site}    ${browser}
     
Click Loginlink
    Click Link    ${loginLink}
    ${childWinHandle}      Get Window Handles    
    Switch Window    ${childWinHandle}[0]  
    Sleep    5s     
     
Enter Username
    Input Text    ${loginid}    ${username}    
    
Enter Password
    Input Text    ${loginpwd}    ${pwd}
    
Click LoginBtn
    Click Button    ${loginBtn}   
       
Verify Successful Login
    sleep  5s
    Element Should Be Visible    ${userDisplay}     
