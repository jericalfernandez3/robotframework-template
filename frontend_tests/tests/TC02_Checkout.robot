*** Settings ***
Library    SeleniumLibrary

Resource    ../config/ConfigurationData.robot
Resource    ../config/Resources_Config.robot

*** Test Cases ***
Checkout Item
    [Documentation]    This testcase validates checkout process.
    ...    @author: jfernand    08Nov2024    - initial create

    ### --- Open Application --- ###
    CommonFunction.Open Application    ${APPLICATION_URL}
    Take Screenshot    01 Login Page
    Login_Page.Set Username    ${USERNAME}
    Login_Page.Set Password    ${PASSWORD}
    Login_Page.Click Login Button
    Inventory_Page.Validate Home Page
    Take Screenshot   02 Inventory Page

    ### --- Select Item --- ###
    Inventory_Page.Select Any Product    ${SL_BACKPACK}
    Inventory_Page.Click Cart Button
    Take Screenshot   03 Cart Page

    ### --- Checkout Item --- ###
    Cart_Page.Click Checkout Button
    Checkout_Page.Set First Name    Jeric Al
    Checkout_Page.Set Last Name    Fernandez
    Checkout_Page.Set Zip Code    1121
    Take Screenshot   04 Checkout Page - Information
    Checkout_Page.Click Continue Button
    Take Screenshot   05 Checkout Page - Overview
    Checkout_Page.Click Finish Button
    Checkout_Page.Validate Checkout Complete
    Take Screenshot   06 Checkout Page - Completed
