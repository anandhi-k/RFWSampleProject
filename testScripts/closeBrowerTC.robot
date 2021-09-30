*** Settings ***
Library             SeleniumLibrary 
*** Variables ***

*** Test Cases ***
To Close Browser
    Open Browser     https://www.seleniumeasy.com/test/table-search-filter-demo.html    chrome
    Set Selenium Speed    10
    Close Browser
      
    Open Browser     https://www.seleniumeasy.com/test/table-pagination-demo.html    chrome
    Set Selenium Speed    5
    
	Open Browser     https://www.seleniumeasy.com/test/jquery-dual-list-box-demo.html    chrome
    Set Selenium Speed    5
    Close All Browsers
        

    