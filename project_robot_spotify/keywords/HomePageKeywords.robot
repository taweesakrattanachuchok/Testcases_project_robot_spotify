*** Settings ***
Library    SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***
Then spotify show home page and display message as "${expected_message}"
    CommonKeywords.Wait until page contains elemment then veryify text    ${expected_message}


user logout from spotify
    CommonKeywords.Wait until is ready then click element    xpath=//button[@data-testid="user-widget-link"]
    CommonKeywords.Wait until is ready then click element    xpath=//button[@data-testid="user-widget-dropdown-logout"]

