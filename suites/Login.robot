*** Settings ***
Resource                    ../pageObjects/Base.robot
Resource                    ../pageObjects/LoginPage/Login.robot
Resource                    ../pageObjects/HomePage/Homepage.robot
Suite Setup                 Open Flight Application
Suite Teardown              Close Application

*** Test Cases ***
User Should Be Able login With Valid Data
    [Documentation]         Test to verify user data

    Verify Homepage Appears
    Tap Sign In Button in Homepage
    Verify Login Page Appears 
    Input Username In Login Page        username=support@ngendigital.com
    Input Password in Login Page        password=abc123
    Tap Sign in Button In Login Page
    Verify User Success To Login