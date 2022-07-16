*** Setting ****
Documentation               Search related keywords
Variables                   book_locators.yaml

*** Keywords ***
Click Book Button In Login Page
    Element Should Be Visible           ${bookButton_loginPage}
    Click Element                       ${bookButton_loginPage}
    Wait Until Element Is Visible       ${bookButton_bookPage}

Click Trip Option   
    [Arguments]     ${tripOption}
    Click Text                          ${tripOption}

Choose From City   
    [Arguments]     ${fromCity}
    Click Element                       ${fromCity_list}
    Sleep           2s
    Click Text                          ${fromCity}      

Choose To City    
    [Arguments]     ${toCity}
    Click Element                       ${toCity_list}
    Sleep           2s
    Click Text                          ${toCity}  

Choose Class       
    [Arguments]     ${withClass}
    Click Element                       ${withClass_list}
    Sleep           2s
    Click Text                          ${withClass}  

Enter Start Date
    Click Element                       ${startDate_button}
    Wait Until Element Is Visible       ${headerDate}
    [Arguments]     ${startDate}
    Click Text                          ${startDate}
    Click Element                       ${setDate_ok}

Enter End Date                        
    Click Element                       ${endDate_button}
    Wait Until Element Is Visible       ${headerDate}
    [Arguments]     ${endDate}
    Click Text                          ${endDate}
    Click Element                       ${setDate_ok}

Choose Flight Option        
    Wait Until Element Is Visible       ${bookButton_bookPage}
    [Arguments]     ${flightAcc}
    Click Text                          ${flightAcc}

Click Book Button In Book Page
    Click Element                       ${bookButton_bookPage}

Confirm Booking Price
    Wait Until Element Is Visible       ${confirmPrice_text}
    [Arguments]     ${choosePrice}
    Click Text                          ${choosePrice}
    Click Element                       ${confirmPrice_button}

Verify Booking Success
    Wait Until Element Is Visible       ${flight_booked}