*** Settings ***
Library  AppiumLibrary

*** Variables ***
${URL}  https://www.github.com
${SEARCH_ELEMENT}  name=q

*** Keywords ***
Search Github
    [Arguments]  ${SEARCH}
    go to url  ${URL}
    input text  ${SEARCH_ELEMENT}  ${SEARCH}