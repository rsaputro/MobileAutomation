*** Settings ***
Resource                    ../pageObjects/Base.robot
Resource                    ../pageObjects/LoginPage/Login.robot
Resource                    ../pageObjects/Homepage/Homepage.robot
Resource                    ../pageObjects/BookPage/Book.robot
Suite Setup                 Open Flight Application
Suite Teardown              Close Application

*** Test Cases ***
Book A Flight
    [Documentation]         Login with valid data
    [Setup]                 Run Keywords        Login With Valid Data

    Click Book Button In Login Page
    Click Trip Option                           tripOption=ROUND TRIP
    Choose From City                            fromCity=Toronto
    Choose To City                              toCity=Paris
    Choose Class                                withClass=Economy
    Enter Start Date                            startDate=3
    Enter End Date                              endDate=23
    Choose Flight Option                        flightAcc=Flight
    Click Book Button In Book Page
    Confirm Booking Price                       choosePrice=$1755
    Verify Booking Success