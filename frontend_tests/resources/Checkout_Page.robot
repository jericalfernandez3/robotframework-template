*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../config/ConfigurationData.robot
Resource    ../config/Locators_Config.robot

*** Keywords ***
Set First Name
    [Documentation]    This keyword is used to enter First Name in Checkout page.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]    ${First_Name}

    Wait Until Element Is Visible    ${First_Name_TEXTFIELD}    30
    Input Text    ${First_Name_TEXTFIELD}    ${First_Name}

Set Last Name
    [Documentation]    This keyword is used to enter Last Name in Checkout page.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]    ${Last_Name}

    Wait Until Element Is Visible    ${Last_Name_TEXTFIELD}    30
    Input Text    ${Last_Name_TEXTFIELD}    ${Last_Name}

Set Zip Code
    [Documentation]    This keyword is used to enter Zip Code in Checkout page.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]    ${Zip_Code}

    Wait Until Element Is Visible    ${Zip_Code_TEXTFIELD}    30
    Input Text    ${Zip_Code_TEXTFIELD}    ${Zip_Code}

Click Continue Button
    [Documentation]    This keyword is used to click the Continue button.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]

    Wait Until Element Is Visible    ${Continue_BUTTON}    30
    Click Element    ${Continue_BUTTON}
    Wait Until Element Is Visible    ${Checkout_Overview_TEXT}    30

Click Finish Button
    [Documentation]    This keyword is used to click the Finish button.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]

    Wait Until Element Is Visible    ${Finish_BUTTON}    30
    Click Element    ${Finish_BUTTON}

Validate Checkout Complete
    [Documentation]    This keyword is used to validate the completion of checkout.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]

    Wait Until Element Is Visible    ${Checkout_Complete_TEXT}    30
    Element Should Be Visible    ${Checkout_Complete_CONTAINER}    Checkout Completion is displayed