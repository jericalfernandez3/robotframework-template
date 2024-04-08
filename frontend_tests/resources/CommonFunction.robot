*** Settings ***
Library    SeleniumLibrary

Resource    ../config/ConfigurationData.robot

*** Keywords ***
Open Application
    [Documentation]    This keyword is used to open the application.
    ...    @author: jfernand    22Nov2023    - initial create
    [Arguments]    ${App_Url}

    Open Browser    ${App_Url}    chrome
    Maximize Browser Window
    Sleep    3

Take Screenshot
    [Documentation]    This keyword is used to take a screenshot of the current page.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]    ${Filename}

    Capture Page Screenshot    ${SCREENSHOT_PATH}/${Filename}.png