*** Settings ***
Library    RequestsLibrary    
Library    SeleniumLibrary  
Library    Collections     
  

*** Variables ***
${base_url}    https://reqres.in/api/users


*** Test Cases ***
Delete_Request
    Create session     myDelSess     ${base_url}
    ${response}    Delete On Session   myDelSess     /101
    # If request is successful and no content is returned then status code is 204 
    Status Should Be    204    ${response.status_code}
    