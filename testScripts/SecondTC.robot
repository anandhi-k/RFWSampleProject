*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
  

*** Test Cases ***
Valid LoginTest
    open browser    https://the-internet.herokuapp.com/login   ${browser}
    maximize browser window
    input text  id:username     tomsmith
    input text  id:password     SuperSecretPassword!
    click button    xpath://button[@class='radius']
    ${pageTitle}    get title
    Log To Console  ${pageTitle}
    title should be     ${pageTitle}
    close browser

Invalid LoginTest
    open browser    https://the-internet.herokuapp.com/login   ${browser}
    maximize browser window
    input text  id:username     tomsmith1
    input text  id:password     SuperSecretPasswordinvalid
    click button    xpath://button[@class='radius']
    Element Should Contain    id:flash   Your username is invalid!    
    close browser
    
