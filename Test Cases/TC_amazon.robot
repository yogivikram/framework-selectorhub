*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/keywordsamazon.robot

*** Variables ***

*** Test Cases ***

TC1_ Go to mobile section and search iphone
    open browser and maximize
    go to mobile and search iphone on amazon

TC2_ Go to mobile section and search iphone-15
    open browser and maximize
    go to mobile and search iphone on amazon

TC3_ Go to mobile section and search android
    open browser and maximize
    go to mobile and search iphone on amazon

TC4_ Go to mobile section and search windows
    open browser and maximize
    go to mobile and search iphone on amazon