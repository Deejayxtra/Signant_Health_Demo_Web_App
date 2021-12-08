*** Settings ***
Documentation     Variables for Automation Test Project
Library           SeleniumLibrary



*** Variables ***
${URL}                  http://127.0.0.1:5000/
${BROWSER}              chrome
${DEMO_APP}             xpath:/html/body/nav/h1/a
${REGISTER}             xpath:/html/body/nav/ul/li[1]/a
${USERNAME}             id:username
${PASSWORD}             id:password
${FIRST_NAME}           id:firstname
${FAMILY_NAME}          id:lastname
${PHONE_NUMBER}         id:phone
${REGISTER_BUTTON}      xpath:/html/body/section/form/input[6]
${LOGIN_BUTTON}         xpath:/html/body/section/form/input[3]
${LOGIN}                xpath:/html/body/nav/ul/li[2]/a
${LOGOUT}               xpath:/html/body/nav/ul/li[2]/a
${INDEX_PAGE}           xpath:/html/body/section/header/h1




