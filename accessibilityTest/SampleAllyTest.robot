*** Settings ***
Library    SeleniumLibrary
Library   AxeLibrary    

*** Test Cases ***
Google Accessibility Test
   Open Browser    https://www.google.com/    Chrome
   
   # execute accessibility tests
   &{results}=    Run Accessibility Tests    googleA11y.json
   Log to console     Violations Count: ${results.violations}

   # log violation result to log.html
   Log Readable Accessibility Result    violations
   # To get violations on log in json format
   Get Json Accessibility Result 
   [Teardown]    Close All Browsers
