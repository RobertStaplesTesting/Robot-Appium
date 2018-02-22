*** Settings ***
Library  AppiumLibrary
Library  HttpLibrary.HTTP
Library  Collections
Library  OperatingSystem
Library  String

Documentation  This is a tech demo to open and interact with an android program either real or emulator


*** Variables ***
${SITE}  http://localhost:4723/wd/hub
${DEVICENAME}  HT6A10200365
${PLATFORM_NAME}  Android
${PLATFORM_VERSION}  8.1.0

${EMAIL_ELEMENT}  email
${PASSWORD_ELEMENT}  pass
${LOGIN_ELEMENT}  login


*** Keywords ***
Setup Test Suite
    [Documentation]  This Function opens the Relevent application.
    [Arguments]  ${APPLICATION}  ${MAIN_ACTIVITY}
    Open Application  ${SITE}  platformName=${PLATFORM_NAME}  platformVersion=${PLATFORM_VERSION}  deviceName=${DEVICENAME}  app=${APPLICATION}  automationName=appium  appPackage=${APPLICATION}  appActivity=${MAIN_ACTIVITY}

Login to Application
    [Arguments]  ${Username}  ${Password}
    input text  ${EMAIL_ELEMENT}  ${Username}
    input text  ${EMAIL_ELEMENT}  ${Password}
    click element  ${LOGIN_ELEMENT}

Get data
    [Arguments]  ${Path}
    ${jsonfile}    Get File    ${Path}
    ${json}=    evaluate    json.loads('''${jsonfile}''')    json
    set global variable  ${data}  ${json}
    [Return]  ${json}
