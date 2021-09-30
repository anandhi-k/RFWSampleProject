*** Settings ***
Library    RequestsLibrary    
Library    SeleniumLibrary  
Library    Collections
Library    JSONLibrary          

*** Variables ***
${basic_url}    http://postman-echo.com
${oauth2_url}    https://api.github.com
${appToken}    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

*** Test Cases ***
BasicAuthWithUserIdRequest
    ${auth_list}    Create List    postman    password
    Create Session    myBasicAuth   ${basic_url}  auth=${auth_list}  
    ${response}    Get On Session    myBasicAuth   /basic-auth
    Log To Console    ${response.status_code}     
    Log To Console    ${response.content}
    
    Status Should Be    200    ${response.status_code}

OAuthRequest
     # &{auth_list}    Create Dictionary    appToken=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
    
    Create Session    myAuth2   ${oauth2_url}   oauth2=${appToken}  
    ${response}    Get On Session    myAuth2   /user/repos     
     Log To Console    ${response.status_code}     
    Log To Console    ${response.content}