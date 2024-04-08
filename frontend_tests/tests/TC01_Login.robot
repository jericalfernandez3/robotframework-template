*** Settings ***
Library    SeleniumLibrary

Resource    ../config/ConfigurationData.robot
Resource    ../config/Resources_Config.robot

*** Test Cases ***
Login To Application
    [Documentation]    This testcase verifies launching of the application.
    ...    @author: jfernand    22Nov2023    - initial create

    ### --- Open Application --- ###
    CommonFunction.Open Application    ${APPLICATION_URL}
    Take Screenshot    Login Page
    Login_Page.Set Username    ${USERNAME}
    Login_Page.Set Password    ${PASSWORD}
    Login_Page.Click Login Button
    Take Screenshot   Home Page