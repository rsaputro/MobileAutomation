*** Setting ****
Documentation               Login related keywords
Variables                   login_locators.yaml

*** Keywords ***
Verify Login Page Appears
    Wait Until Element Is Visible           ${usernameInput_loginPage}
    Element Should Be Visible               ${passwordInput_loginPage}
    Element Should Be Visible               ${signInButton_loginPage}

Input Username In Login Page
    [Arguments]             ${username}
    Input Text              ${usernameInput_loginPage}          ${username}
    
Input Password in Login Page
    [Arguments]             ${password}
    Input Text              ${passwordInput_loginPage}          ${password}

Tap Sign In Button In Login Page
    Wait Until Element Is Visible           ${signInButton_loginPage}
    Click Element                           ${signInButton_loginPage}

Verify User Success To Login
    Wait Until Element Is Visible           ${loginSucceed}
