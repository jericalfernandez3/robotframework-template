*** Settings ***
Library    SeleniumLibrary

Resource    ../resources/CommonFunction.robot
Resource    ../config/ConfigurationData.robot

*** Test Cases ***
Testcase 1
    [Documentation]    This testcase verifies launching of the application.
    ...    @author: jfernand    22Nov2023    - initial create

    ## --- Open application --- ###
    CommonFunction.Open Application    ${APPLICATION_URL}