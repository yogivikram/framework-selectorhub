*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObject/locatorsamazon.py


*** Variables ***

*** Keywords ***
open browser and maximize
    open browser    ${url}  ${browser}
    maximize browser window

go to mobile and search iphone on amazon
    click element   ${mobiletab}
    input text  ${search}   iphone
    click element   ${searchsubmit}


