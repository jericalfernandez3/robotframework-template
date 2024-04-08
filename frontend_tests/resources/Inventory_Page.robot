*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../config/ConfigurationData.robot
Resource    ../config/Locators_Config.robot

*** Keywords ***
Validate Home Page
    [Documentation]    This keyword is used to validate home page logo and inventory container.
    ...    @author: jfernand    08Apr2024    - initial create

    Wait Until Element Is Visible    ${APP_LOGO}    30
    Element Should Be Visible    ${APP_LOGO}    App Logo is displayed
    Element Should Be Visible    ${INVENTORY_CONTAINER}    Inventory Container is displayed

Select Any Product
    [Documentation]    This keyword is used to select any product in home page.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]    ${Product}

    ${Selected_Product} =    Replace String    ${Sauce_Labs_Product_Add_To_Cart_BUTTON}    Product Name    ${Product}

    Click Button    ${Selected_Product}

Click Cart Button
    [Documentation]    This keyword is used to click the Cart button.
    ...    @author: jfernand    08Apr2024    - initial create
    [Arguments]

    Click Element    ${Cart_BUTTON}
    Wait Until Element Is Visible    ${Cart_Item_LIST}    30