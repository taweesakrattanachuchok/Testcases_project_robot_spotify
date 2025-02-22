*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot



*** Keywords ***
Where user login to spotify with ${username} and ${password}
    ${login_button}    Set Variable    xpath=//button[@data-testid="login-button"]
    CommonKeywords.Wait until is ready then click element    ${login_button}
    CommonKeywords.Wait until elemment is ready input text  xpath=//input[@placeholder="Email or username"]    ${email}
    CommonKeywords.Wait until elemment is ready input text    xpath=//input[@placeholder="Password"]    ${password}
    CommonKeywords.Wait until is ready then click element    xpath=//button[@id="login-button"]


Then spotify should display validate login faill message as "${expected_menssage}"
    CommonKeywords.Wait until page contains elemment then veryify text    ${expected_menssage}

    