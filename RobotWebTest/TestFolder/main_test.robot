*** Settings ***
Documentation  Page Object in Robot Framework and Selenium Webdriver 
Library    SeleniumLibrary
Resource    ../KeywordDefinitionFiles/AccountCreationForm.robot
Resource    ../KeywordDefinitionFiles/Category.robot
Resource    ../KeywordDefinitionFiles/MainPage.robot
Resource    ../KeywordDefinitionFiles/MyAccount.robot
Resource    ../KeywordDefinitionFiles/Order.robot
Resource    ../KeywordDefinitionFiles/Product.robot
Resource    ../KeywordDefinitionFiles/Settings.robot
Suite Setup    Open the browser on the main page
Suite Teardown    Close Browser

*** Test Cases ***

Automate User Registration
    Click on sign in link.
    Enter your email address in 'Create an account' section.
    Click on Create an Account button.
    Enter your Personal Information, Address and Contact info.
    Click on Register button.
    Validate that user is created.
    Log out

Error messages for mandatory fields
    Click on sign in link.
    Enter your email address in 'Create an account' section.
    Click on Create an Account button.
    Leave the mandatory fields (marked with *) blank and click Register button.
    Verify that error has been displayed for the mandatory fields. 

Login negative path (invalid e-mail)
    Click on sign in link.
    Enter invalid email address in the email box and click enter.
    Validate that an error message is displaying saying "Invalid email address."

Buy Product end to end test
    Click on sign in link.
    Login to the website.
    Move your cursor over Women's link.
    Click on sub menu 'T-shirts'.
    Mouse hover on the T-shirts
    'More' button will be displayed, click on 'More' button.
    Increase quantity to 2.
    Select size 'L'
    Select color blue.
    Click 'Add to Cart' button.
    Click 'Proceed to checkout' button.
    Complete the buy order process till payment (Bank options).
    Make sure that Product is ordered.
    Log out
