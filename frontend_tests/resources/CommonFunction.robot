*** Settings ***
Library    SeleniumLibrary

Resource    ../config/ConfigurationData.robot

*** Keywords ***
Open Application
    # [Documentation] This keyword is used to open the application.
    # ...    @author: jfernand    22Nov2023    - initial create
    [Arguments]    ${App_Url}

    Go To    ${App_Url}
    Sleep    30