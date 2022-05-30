*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Move your cursor over Women's link.
    Mouse Over    ${WomenButton}
    Sleep    2
Click on sub menu 'T-shirts'.
    Click Element    ${TShirtButton}
    Sleep    2