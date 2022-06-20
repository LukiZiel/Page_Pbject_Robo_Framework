*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Mouse hover on the T-shirts
    Mouse Over    ${TShirtsImage}
    Sleep    2
'More' button will be displayed, click on 'More' button.
   Click Element    ${MoreButton}