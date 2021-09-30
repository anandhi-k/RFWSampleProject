*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${BROWSER}            chrome
${DELAY}              0
${VALID USER}         tomsmith
${VALID PASSWORD}     SuperSecretPassword!
${LOGIN URL}          https://the-internet.herokuapp.com/login
${LOGIN BUTTON}       xpath://button[@class='radius']

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
   Location Should Contain    login    

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    id:username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id:password    ${password}

Submit Credentials
    Click Button    ${LOGIN_BUTTON}
   