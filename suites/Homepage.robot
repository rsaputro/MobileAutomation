*** Settings ***
Resource                    ../pageObjects/Base.robot
Resource                    ../pageObjects/HomePage/Homepage.robot
Suite Setup                 Open Flight Application
Suite Teardown              Close Application

*** Test Cases ***
Verify Homepage Appears
    [Documentation]         Test to verify user data

    Verify Homepage Appears