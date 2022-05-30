*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Complete the buy order process till payment (Bank options).
    Click Element   ${ProcideToCheckoutButton}
    Wait Until Element Is Visible    ${ProcideToCheckoutAdress}  
    Click Element    ${ProcideToCheckoutAdress}
    Wait Until Element Is Visible    ${ProcideToCheckoutShipping}
    Click Element    ${TermsBox}
    Click Element    ${ProcideToCheckoutShipping}
    Wait Until Element Is Visible    ${PayByBankButton}
    Click Element    ${PayByBankButton}
    Wait Until Element Is Visible    ${ConfirmOrderButton}
    Click Element    ${ConfirmOrderButton}
Make sure that Product is ordered.
    Page Should Contain    Your order on My Store is complete