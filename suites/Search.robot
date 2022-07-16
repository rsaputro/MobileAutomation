*** Settings ***
Resource                    ../pageObjects/Base.robot
Resource                    ../pageObjects/LoginPage/Login.robot
Resource                    ../pageObjects/Homepage/Homepage.robot
Resource                    ../pageObjects/SearchPage/Search.robot
Suite Setup                 Open Flight Application
Suite Teardown              Close Application

*** Test Cases ***
Search Flight
    [Documentation]         Login with valid data
    [Setup]                 Run Keywords        Login With Valid Data

    Click Search Button In Login Page
    Input a Flight Number                       flightNumber=DA935
    Click Search Button In Search Page
    Verify The Flight Number Is Found