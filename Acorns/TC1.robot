*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections

*** Variables ***
${URL}    https://www.acorns.com/
${BROWSER}    Chrome

*** Test Cases ***
GetdataForAcrons
    [Documentation]    This test case will get the data for acorns
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
    Close Browser
*** Keywords ***