*** Settings ***
Resource  ../Resource.Robot
Resource  ../helpers/github_search.robot
Resource  ../helpers/searchcode_search.robot
Resource  ../helpers/chrome_launch.robot

Documentation  This Suite is to test browser calls.

Test Setup  Setup Test Suite  ${APPLICATION}  ${MAIN_ACTIVITY}
Test Teardown  Close Application

Suite Setup  Get data  ${DATA_PATH}

*** Variables ***
${APPLICATION}  com.android.chrome
${MAIN_ACTIVITY}  com.google.android.apps.chrome.Main
${DATA_PATH}  data.json

*** Test Cases ***
Valid Github search by element
    [Documentation]  A valid test on github searching by element
    [Tags]  Github
    launch Chrome
    Search Github  ${data['search_phrase_1']}
    element name should be  ${data['github_result']}

Valid Searchcode search by xpath
    [Documentation]  A Valid test on searchcode searching by xpath
    [Tags]  Searchcode
    launch Chrome
    Search Searchcode  ${data['search_phrase_2']}
    element name should be  ${data['search_result']}