*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../config/ConfigurationData.robot
Resource    ../config/Locators_Config.robot

*** Keywords ***
Click Checkout Button
    [Documentation]    This keyword is used to click the Checkout button.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]

    Click Element    ${Checkout_BUTTON}
    Wait Until Element Is Visible    ${Continue_BUTTON}    30