*** Settings ***
Library            SeleniumLibrary   

# In  case of excel 
# Library            DataDriver      file=../testData/loginData.xlsx    sheet_name=loginPage
# In case of csv file - DataDrivenTC.csv
Library            DataDriver      
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
Test Template     Invalid Login 
Test Setup        Go To Login Page
Resource          resource.robot

*** Variables ***
${username}
${password}

*** Test Cases ***              
Login with user ${username} and password ${password}    Default    UserData
    

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
    Login Should Have Failed     ${errMsg}

# Login Should Have Failed
    # Element Should Contain    id:flash   invalid!    
    

