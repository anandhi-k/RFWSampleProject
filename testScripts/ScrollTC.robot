*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
Scroll Test
    Open Browser    https://demo.opencart.com/    chrome
    Maximize Browser Window
     sleep    5s
    execute javascript    window.scrollTo(0,900)
    sleep    3s
    # To scroll into particular element
    Scroll Element Into View    id=cart
    # sleep    1s
    # To scroll down upto particular location
    # execute javascript    window.scrollTo(0,900)
    # Close Browser
    
    