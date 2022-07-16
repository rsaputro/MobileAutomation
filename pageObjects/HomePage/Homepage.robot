*** Setting ****
Documentation                           Homepage related keywords
Variables                               homepage_locators.yaml

*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible       ${logo_homepage}
    Element Should Be Visible           ${mainImage_homepage}
    Element Should be Visible           ${loginButton_homepage}

Tap Sign In Button in Homepage
    Click Element                       ${loginButton_homepage}