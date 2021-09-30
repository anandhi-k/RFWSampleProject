*** Settings ***
Library    RequestsLibrary    
Library    SeleniumLibrary  
Library    Collections      

*** Variables ***
${base_url}    https://demoqa.com/utilities/weather/city
${city}        chennai



*** Test Cases ***
Get_weatherInfo
    Create session     myGetSess     ${base_url}
      ${response}   Get On Session    myGetSess     /${city}
      Log To Console    ${response.status_code}
      Log To Console    ${response.content}
      Log To Console    ${response.headers}        
          
# Validate Status and Content
                   
        Status Should Be    200    ${response} 
        Should Be Equal As Strings    ${response.reason}    OK
        ${reqBody}=  Convert To String   ${response.content}
        Should Contain    ${reqBody}  chennai
          
# Validate Content header
        Log To Console    ${response.headers}[Content-Type]
        Dictionary Should Contain Key    ${response.headers}    Content-Type     
            
        
                     
