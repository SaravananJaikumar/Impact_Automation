*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections

*** Variables ***
${URL}    https://app.impact.com
${BROWSER}    safari
${username}    sjayabal@forbesadvisor.com
${password}    sanjai123&

*** Test Cases ***
OPEN GOOGLE
    [Documentation]    Open Google and perform a search
    Open Browser    ${URL}    ${BROWSER}
    Sleep    5
    Maximize Browser Window
    Sleep    3
    #Click Element    Xpath = //*[@id="wBIvQ7"]/div/label/input
    Wait Until Element Is Enabled    id=j_username
    LogintoImpact    ${username}    ${password}
   
    Close Browser


*** Keywords ***
LogintoImpact
    [Documentation]    Log into Impact with the provided username and password
    [Arguments]    ${username}    ${password}
    Input Text    id=j_username    ${username}
    Input Text    id=j_password    ${password}
    Click Button    id=loginButton
    #Wait Until Page Contains Element    id=dashboard
