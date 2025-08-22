*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary

*** Variables ***
${Base_url}     https://actualized-dev.irepo.in/
${Browser}      chrome
${String}       Arshad
${Number}       77
${Boolean}      ${True}
${List}         wone    two     three
${Dict}         key=value   key2=value2


*** Test Cases ***
Simple Testcase
        Open Browser    ${Base_url}     ${Browser}
        Maximize Browser Window
        #Set Window Size    1200    800
        Go To    https://www.jaroeducation.com/blog/most-accredited-online-mba-programmes/
        Reload Page
        Close All Browsers