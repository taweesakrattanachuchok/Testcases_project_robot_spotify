*** Settings ***
Library             SeleniumLibrary
Resource            ../keywords/LoginPageKeywords.robot
Resource            ../keywords/HomePageKeywords.robot
Variables           ../resources/config/config.yaml
Variables           ../resources/testdata/testdata.yaml
Suite Setup         Open Browser    ${baseUrl}    chrome
Suite Teardown      Close Browser
 

*** Test Cases ***
As a open web url spotify to loging success
    Where user login to spotify with ${email} and ${valid_password}
    Then spotify show home page and display message as "Recommended for you"
    [Teardown]    user logout from spotify

As a open web url spotify to loging fail
    Where user login to spotify with ${email} and ${invalid_password}
    Then spotify should display validate login faill message as "Incorrect username or password."