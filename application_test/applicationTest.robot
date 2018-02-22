*** Settings ***
Resource  ../Resource.Robot

Documentation  this is to test basic logins with a target application

Test Setup  Setup Test Suite  ${APPLICATION}  ${MAIN_ACTIVITY}
Test Teardown  Close Application

Suite Setup  Get data  ${DATA_PATH}

*** Variables ***
${APPLICATION}  au.com.sensis.skip
${MAIN_ACTIVITY}  au.com.sensis.skip.activity.SkipActivity
${DATA_PATH}  data.json

${POST_LOGIN_ELEMENT}  login
${LOGIN_FAILURE_MESSAGE}  fail

*** Test Cases ***
Valid Login
    [Documentation]  The purpose of this test is a valid login into the an application
    [Tags]  ValidLogin
    login to application  ${data['valid_username']}  ${data['valid_password']}
    element should be visible  ${POST_LOGIN_ELEMENT}
    close application

Invalid Login
    [Documentation]  The purpose of this test is an invalid login into the an application
    [Tags]  InvalidLogin
    login to application  ${data['invalid_username']}  ${data['invalid_password']}
    element should be visible  ${LOGIN_FAILURE_MESSAGE}
    close application