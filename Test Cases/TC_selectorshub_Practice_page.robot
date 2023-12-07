*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/keywordselectorshub.robot
Suite Teardown  close all the browser

*** Variables ***
${url}      https://selectorshub.com/xpath-practice-page/
${browser}  chrome
${value_email}  test@test.com
${value_pass}  test@123
${value_company}  gslab
${value_mobile}  9970690014
${etitle1}  Xpath Practice Page | Shadow dom, nested shadow dom, iframe, nested iframe and more complex automation scenarios

*** Test Cases ***

TC1_Form-fill and submit and check successful submission.
    open browser and maximize   ${url}      ${browser}
    wait until element is visible   //img[contains(@class, "sgpb-popup-close-button")]
    click element   //img[contains(@class, "sgpb-popup-close-button")]
    sleep   2
    provide all the data and click on submit button     ${value_email}  ${value_pass}   ${value_company}    ${value_mobile}
    sleep   5
    ${title1}=  get title
    set global variable     ${title1}
    log to console  ${title1}
    close browser

TC2_ click on download link which will open in new tab, come back to old page.
     open browser and maximize   ${url}      ${browser}
     click on download link
     switch window  ${title1}
     should contain    ${title1}   ${etitle1}
     sleep  3

*** Keywords ***
close all the browser
    close all browsers