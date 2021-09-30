*** Settings ***
Library    Process    

*** Test Cases ***
Setting Variables
    ${result}=    Run Process    python    hello.py
    Should be equal as integers    ${result.rc}    0
    Log to console   ${result.stdout}
    Should be equal as strings    ${result.stdout}    Hello Welcome 