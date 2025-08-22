*** Settings ***
Library    SeleniumLibrary
Resource    Variables.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN_URL}   chrome
    Maximize Browser Window
    Click Element    xpath://button[normalize-space()='Login']

Input Username
    [Arguments]    ${username}
    Input Text    xpath=//input[@id='email']    ${username}

Input Pass
    [Arguments]    ${password}
    Input Text    xpath=//input[@id='password']    ${password}

Submit Login
    Click Button    xpath://button[normalize-space()='Login']

Verify Successful Login
    Title Should Be    Actualized
