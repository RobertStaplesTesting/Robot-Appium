*** Settings ***
Library  AppiumLibrary

*** Variables ***
${URL}  https://www.searchcode.com
${SEARCH_ELEMENT}  //form/div/input


*** Keywords ***
Search Searchcode
    [Documentation]  This is a helper that access the search query of the searchcode homepage
    [Tags]  Searchcode
    [Arguments]  ${SEARCH}
    go to url  ${URL}
    input text  ${SEARCH_ELEMENT}  ${SEARCH}