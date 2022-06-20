*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Increase quantity to 2.
    Click Element    ${PlusButton}
Select size 'L'
    Select From List By Value     ${MenuSize}    ${ProduktSizeL}
Select color blue.
    Click Element    ${BlueColor}
    
Click 'Add to Cart' button.
    Click Element    ${AddToCartButton}
Click 'Proceed to checkout' button.
    Wait Until Element Is Visible    ${ProcideButton}    10
    Click Element    ${ProcideButton}