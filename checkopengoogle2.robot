*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser        ${base_url}         ${browser_type}
Test Teardown           Close Browser

*** Variables ***
${base_url}             https://www.google.com/
${browser_type}         chrome

*** Test Cases ***
Test 1 Buka Google Chrome                 
    Maximize Browser Window
    sleep               3s