*** Settings ***
Resource    LoginPageResource.resource

*** Test Cases ***
LoginAppTest
    LaunchApp
    Click Loginlink
    Enter Username
    Enter Password
    Click LoginBtn
    Verify Successful Login
    