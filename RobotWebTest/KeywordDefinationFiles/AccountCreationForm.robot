*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Enter your Personal Information, Address and Contact info.
    Wait Until Element Is Visible    ${Gender}    10
    Click Element    ${Gender}
    Input Text    ${FirstName}    ${Name}
    Input Text    ${LastName}     ${Surname}
    Input Password    ${PasswordCreate}    ${Password}
    Select From List By Index    ${Days}    ${Day}   
    Select From List By Index    ${Months}    ${Month}
    Select From List By Value    ${Years}    ${Year}  
    Input Text    ${Company}     ${CompanyName}
    Input Text    ${Address}    ${CompanyAddress}
    Input Text    ${City}    ${CityName}
    Select From List By Label   ${State}    ${StateName}
    Input Text    ${Postcode}    ${PostalCode}
    Input Text    ${PhoneEnter}    ${Phone}
Click on Register button.
    Click Button    ${SubmitAccount}
Validate that user is created.
    Sleep    10
    Page Should Contain    ${Surname}
Leave the mandatory fields (marked with *) blank and click Register button.
    Set Selenium Implicit Wait    10
    Wait Until Element Is Visible    ${SubmitAccount}
    Click Button    ${SubmitAccount}
Verify that error has been displayed for the mandatory fields.

    Page Should Contain Element    ${AlertEmail}
    Page Should Contain            You must register at least one phone number.
    Page Should Contain            lastname is required.
    Page Should Contain            firstname is required.
    Page Should Contain            passwd is required.
    Page Should Contain            address1 is required.
    Page Should Contain            city is required.
    Page Should Contain            The Zip/Postal code you've entered is invalid. It must follow this format: 00000
    Page Should Contain            This country requires you to choose a State.