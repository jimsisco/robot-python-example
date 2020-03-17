*** Settings ***
Library           SeleniumLibrary

*** Variables ***


*** Keywords ***

Input First Name
    [Arguments]    ${FFXPATH}      ${FNXPATH}       ${FN}
    select frame    ${FFXPATH}
    input text      ${FNXPATH}          ${FN}

Input Last Name
    [Arguments]     ${LNXPATH}      ${LN}
    input text      ${LNXPATH}          ${LN}

Input Email
    [Arguments]     ${EMXPATH}      ${EM}
    input text      ${EMXPATH}          ${EM}

Input Confirm Email
    [Arguments]     ${CEMXPATH}      ${LN}
    input text      ${CEMXPATH}          ${LN}

Input Phone Number
    [Arguments]     ${PNUMXPATH}      ${PNUM}
    input text      ${PNUMXPATH}          ${PNUM}

Input Contact Me by
    [Arguments]     ${CMBXPATH}      ${CMB}
    input text      ${CMBXPATH}          ${CMB}
