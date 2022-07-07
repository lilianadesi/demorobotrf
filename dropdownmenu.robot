*** Settings ***
Library                 SeleniumLibrary
# Test Setup              Open Browser        ${base_url}         ${browser_type}
# Test Teardown           Close Browser
Suite Setup              Open Browser        ${base_url}         ${browser_type}
Suite Teardown           Close Browser

*** Variables ***
${base_url}             https://the-internet.herokuapp.com/dropdown
${browser_type}         Chrome

*** Test Cases ***
I selecting "option 2" in dropdown Menu
    Maximize Browser Window
    Element Should Be Visible            //select[@id="dropdown"]
    Select From List By Index            //select[@id="dropdown"]           2
    sleep       2s
    List Selection Should Be             //select[@id="dropdown"]           Option 2
    sleep       2s

# I selecting "option 1" in dropdown Menu
#     Maximize Browser Window
#     Element Should Be Visible            //select[@id="dropdown"]
#     Select From List By Index            //select[@id="dropdown"]           1
#     sleep       2s
#     List Selection Should Be             //select[@id="dropdown"]           Option 1
#     sleep       2s