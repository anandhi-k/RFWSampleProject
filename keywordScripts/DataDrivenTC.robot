*** Settings ***
 
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
Test Template     Login with invalid credentials 
Test Setup        Go To Login Page
Resource          resource.robot

*** Test Cases ***               USER NAME        PASSWORD
Invalid Username                 invalid          ${VALID PASSWORD}
Invalid Password                 ${VALID USER}    invalid
Invalid Username And Password    invalid          whatever
Empty Username                   ${EMPTY}         ${VALID PASSWORD}
Empty Password                   ${VALID USER}    ${EMPTY}
Empty Username And Password      ${EMPTY}         ${EMPTY}


*** Keywords ***
Login With Invalid Credentials 
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
    Login Should Have Failed     ${errMsg}

# Login Should Have Failed
    # Element Should Contain    id:flash   invalid!    
    

