*** Settings ***
Documentation     Keywords for Automation Test Project
Library           SeleniumLibrary
Library           FakerLibrary
Resource          ../resources/Signant_Variables.robot



*** Keywords ***
Lunch the browser and go to the Homepage
    Open Browser                           ${URL}  ${BROWSER}
    Maximize Browser Window
    click element                           ${REGISTER}

Enter new user credentials
    ${name} =  FakerLibrary.Username
    log  ${name}
    set Test Variable  ${name}

    ${name} =  FakerLibrary.Firstname
    log  ${name}
    set Test Variable  ${name}

    ${name1} =  FakerLibrary.Lastname
    log  ${name1}
    set Test Variable  ${name1}

    click element       ${REGISTER}
    input text          ${USERNAME}         ${name}
    input password      ${PASSWORD}         test
    input text          ${FIRST_NAME}       ${name}
    input text          ${FAMILY_NAME}      ${name1}
    input text          ${PHONE_NUMBER}     0401234567
    click element       ${REGISTER_BUTTON}

Assert that new user is registered successfully
    page should contain                      Log In
    [Teardown]                               Close Browser

Open the browser and create an account
    Open Browser       ${URL}  ${BROWSER}
    Maximize Browser Window
    click element       ${REGISTER}
    input text          ${USERNAME}         Deejay
    input password      ${PASSWORD}         test
    input text          ${FIRST_NAME}       Ayodeji
    input text          ${FAMILY_NAME}      Olumuyiwa
    input text          ${PHONE_NUMBER}     0405114911
    click element       ${REGISTER_BUTTON}


Enter user details to login and review user information
    click element       ${LOGIN}
    input text          ${USERNAME}         Deejay
    input text          ${PASSWORD}         test
    click element       ${LOGIN_BUTTON}
    click element       ${LOGOUT}
Assert that user information is successfully displayed on the main view
    page should contain element             ${INDEX_PAGE}
    [Teardown]                              Close Browser



