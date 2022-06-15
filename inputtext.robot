*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser        ${base_url}         ${browser_type}
Test Teardown           Close Browser

*** Variables ***
${base_url}             http://uitestingplayground.com/textinput
${browser_type}         chrome

*** Test Cases ***
input nama                 
    Maximize Browser Window
    Input Text              //input[@class="form-control"]      Liliana desi 
    sleep                   2s  
    # Click Element           //button[@class="btn btn-primary"]
    clear                   //input[@class="form-control"]      =true
    Input Text              //input[@class="form-control"]      desi
    Click Element           //button[@class="btn btn-primary"]
    sleep                   2s  

    # sleep                   5s