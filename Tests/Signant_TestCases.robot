*** Settings ***
Documentation     Signant Health Automation Test Project
Library           SeleniumLibrary
Resource          ../resources/Signant_Keywords.robot
Resource          ../resources/Signant_Variables.robot



*** Test Cases ***
Register through web portal
    Lunch the browser and go to the Homepage
    Enter new user credentials
    Assert that new user is registered successfully

Review my own user information from the main view
    Open the browser and create an account
    Enter user details to login and review user information
    Assert that user information is successfully displayed on the main view


