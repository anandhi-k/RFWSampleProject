*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# ${browser}      chrome
${browser}      headlesschrome
${username}     tomsmith
${password}     SuperSecretPassword!

*** Test Cases ***
LoginTest
    open browser    https://the-internet.herokuapp.com/login   ${browser}  
    maximize browser window
    EnterLoginDetails
    click button    xpath://button[@class='radius']
    ${pageTitle}    get title
    Log To Console  ${pageTitle}
    title should be     ${pageTitle}
    ${url}  get location
    Log To Console  ${url}
    location should contain     ${url}
    close browser

*** Keywords ***
EnterLoginDetails
    input text  id:username     ${username}
    input text  id:password     ${password}
