*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObject/selectorshub_Practice_page.py


*** Keywords ***
open browser and maximize
    [Arguments]  ${url}   ${browser}
    open browser    ${url}   ${browser}
    maximize browser window

provide all the data and click on submit button
    [Arguments]  ${value_email}     ${value_pass}   ${value_company}    ${value_mobile}
#    input text      ${useremail}    ${value_email}
    input text  ${password}     ${value_pass}
    input text  ${company}      ${value_company}
    input text  ${mobile}       ${value_mobile}
    click element   ${submit_button}

click on download link
    wait until element is visible  //img[contains(@class, "sgpb-popup-close-button")]
    click element   //img[contains(@class, "sgpb-popup-close-button")]
    execute javascript      window.scrollTo(0,200)
    click element   ${downloadlink}
    sleep   3
