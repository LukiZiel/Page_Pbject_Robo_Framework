*** Settings ***
Library    SeleniumLibrary
Library    ../random_email.py
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Click on sign in link.
    Wait Until Element Is Visible     ${SingInButtonMain}
    Click Element    ${SingInButtonMain}
Enter your email address in 'Create and account' section.
    ${value}    random_email.Random Char
    Input Text    ${EmailField}   ${value}
Click on Create an Account button.
    Wait Until Element Is Enabled    ${CreateAccountButton}
    Click Element    ${CreateAccountButton}
Enter invalid email address in the email box and click enter.
    Input Text    ${LogInEmailAdressField}    ${InvalidEmailAddress}
    Press Keys    None     RETURN
Validate that an error message is displaying saying "Invalid email address."
    Page Should Contain Element    ${AlertEmail}
    Page Should Contain    Invalid email address.
        
Login to the website.    
    Input Text    ${LogInEmailAdressField}    ${ValidUsser}
    Input Password    ${LogInPasswordField}   ${ValidPassword}
    Press Keys    None    RETURN

Log out
    Wait Until Element Is Visible	${LogOutButton}
    Click Element	${LogOutButton}
    