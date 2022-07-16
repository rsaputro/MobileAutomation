*** Settings ***
Documentation               Base keywords related test cases
Library                     AppiumLibrary

*** Variables ***
${REMOTE_URL}               http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}            Android
${PLATFORM_VERSION}         8.1
${DEVICE_NAME}              emulator-5556
${PACKAGE_NAME}             com.example.myapplication
${ACTIVITY_NAME}            com.example.myapplication.MainActivity

*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL}
    ...                     platformName=${PLATFORM_NAME}
    ...                     platformVersion=${PLATFORM_VERSION}
    ...                     deviceName=${DEVICE_NAME}
    ...                     automationName=UiAutomator2
    ...                     newCommandTimeout=50000
    ...                     appPackage=${PACKAGE_NAME}
    ...                     appActivity=${ACTIVITY_NAME}

Login With Valid Data
    Tap Sign In Button in Homepage
    Verify Login Page Appears 
    Input Username In Login Page        username=support@ngendigital.com
    Input Password in Login Page        password=abc123
    Tap Sign in Button In Login Page
    Verify User Success To Login