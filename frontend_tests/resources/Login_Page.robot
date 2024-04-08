*** Settings ***
Library    SeleniumLibrary

Resource    ../config/ConfigurationData.robot
Resource    ../config/Locators_Config.robot

*** Keywords ***
Set Username
    [Documentation]    This keyword is used to enter username in login page.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]    ${Username}

    Wait Until Element Is Visible    ${Username_TEXTFIELD}    30
    Input Text    ${Username_TEXTFIELD}    ${Username}

Set Password
    [Documentation]    This keyword is used to enter password in login page.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]    ${Password}

    Wait Until Element Is Visible    ${Password_TEXTFIELD}    30
    Input Text    ${Password_TEXTFIELD}    ${Password}

Click Login Button
    [Documentation]    This keyword is used to click Login button in login page.
    ...    @author: jfernand    08Apr2024    - initial create

    Wait Until Element Is Visible    ${Password_TEXTFIELD}    30
    Click Button    ${Login_BUTTON}