*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/keywordsamazon.robot

*** Variables ***

*** Test Cases ***

TC1_ Go to mobile section and search iphone
    open browser and maximize
    go to mobile and search iphone on amazon

