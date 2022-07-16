*** Setting ****
Documentation               Search related keywords
Variables                   search_locators.yaml

*** Keywords ***
Click Search Button In Login Page
    Click Element                       ${searchButton_loginPage}
    Wait Until Element Is Visible       ${flightNumber_text}

Input a Flight Number 
    [Arguments]             ${flightNumber}
    Input Text              ${enter_flightNumber}          ${flightNumber}

Click Search Button In Search Page
    Click Element                       ${searchButton_searchPage}

Verify The Flight Number Is Found
    Element Should Be Visible           ${flightInfo}