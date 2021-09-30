*** Settings ***
Library    RequestsLibrary    
Library    SeleniumLibrary  
Library    Collections
Library    JSONLibrary          

*** Variables ***
${base_url}    https://reqres.in/api/users

*** Test Cases ***
Put_Request
     Create session     myPutSess     ${base_url}    
       &{body}=  Create Dictionary  name=Peter    Job=Project Manager
       Log To Console    ${body}    
       &{header}=  Create Dictionary  Cache-Control=no-cache
       ${response}=     Put On Session  myPutSess     /101      data=${body}     headers=${header}   
       Log To Console    ${response.status_code}   
       Log To Console    ${response.content}     

        ${reqBody}=  Convert To String   ${response.content}
        Should Contain    ${reqBody}  Project Manager
            

        # #Check the value of the header Content-Type
        ${getHeaderValue}=  Get From Dictionary  ${response.headers}  Content-Type
        Should be equal  ${getHeaderValue}  application/json; charset=utf-8  