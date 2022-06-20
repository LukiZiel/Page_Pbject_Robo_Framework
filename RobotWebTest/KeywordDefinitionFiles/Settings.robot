*** Settings ***
Library    SeleniumLibrary
Variables    ../TestData/TestData.py

*** Keywords ***

Open the browser on the main page
    Open Browser    ${Url}    ${Browsr}
    Maximize Browser Window