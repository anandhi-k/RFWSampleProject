*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome

*** Test Cases ***
Valid Login
    Given browser is opened to login page
    When user "tomsmith" logs in with password "SuperSecretPassword!"
    Then should display success message

*** Keywords ***
Browser is opened to login page
     open browser    https://the-internet.herokuapp.com/login   ${browser}

User "${username}" logs in with password "${password}"
    input text  id:username     ${username}
    input text  id:password     ${password}
    click button    xpath://button[@class='radius']

should display success message
    Element Should Contain    id:flash   You logged into a secure area! 