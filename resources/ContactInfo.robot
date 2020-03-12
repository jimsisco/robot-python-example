*** Settings ***
Resource          ../resources/resource.robot

*** Variables ***
#${FNXPATH} =      name:FirstName
#FirstName
#xpath://*[@id='FirstName']
#xpath://input[@id='FirstName']
#Position xpath://li/input
#document.querySelector("#FirstName")
#${LN}
#${EM}
#${PN}
#${CM}
#${CM}

*** Keywords ***

Input First Name
    [Arguments]    ${F1NXPATH}      ${CODE}
    Log    "HELP"
    log    ${F1NXPATH}
#js.executeScript("document.getElementById('some id').value='someValue';");
    #execute javascript    seleniumlibrary.input text        123     ${F1NXPATH}
    Execute Javascript       ${CODE}     #${F1NXPATH}