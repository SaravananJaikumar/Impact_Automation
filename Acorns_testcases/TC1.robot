*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections

*** Variables ***
${URL}    https://www.GOOGLE.com/
${BROWSER}    chrome

*** Test Cases ***
OPEN GOOGLE
    [Documentation]    Open Google and perform a search
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
   
    Close Browser


*** Keywords ***

