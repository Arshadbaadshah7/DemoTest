*** Settings ***
Documentation     Login test cases
Library         SeleniumLibrary
Resource          ../Resources/Keywords.robot
Resource          ../Resources/Variables.robot
#Library           ../Libraries/custom_utils.py
#Test Setup      Open Browser To Login Page
#Test Teardown       Close Browser

*** Test Cases ***
Valid Login
    Set Selenium Speed    2s
    Open Browser To Login Page
    Input Username    ${username}
    Input Pass    ${password}
    Submit Login
    #[Teardown]      Close Browser
    #Verify Successful Login
