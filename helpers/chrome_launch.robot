*** Settings ***
Library  AppiumLibrary

*** Keywords ***
launch Chrome
    click element  com.android.chrome:id/terms_accept
    click element  com.android.chrome:id/positive_button
    click element  com.android.chrome:id/positive_button