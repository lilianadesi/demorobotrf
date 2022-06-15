*** Settings ***
Library                 SeleniumLibrary

*** Test Cases ***
Test 1 Buka Google Chrome
    Open Browser        https://www.google.com/         chrome
    Maximize Browser Window
    sleep               3s
    Close Browser