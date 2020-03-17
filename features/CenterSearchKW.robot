*** Settings ***
Resource          ../resources/resource.robot
Resource          ../resources/ContactInfo.robot


*** Variables ***
${HOMEPAGETITLE}    KinderCare | Child Daycare Centers & Early Education Programs
${ALLOW}     xpath:/html/body/div[2]/div[2]
${FINDCENTER}   xpath://a[contains(text(),'Find Your Center')]
${SEARCHPAGETITLE}      Center Search Results | KinderCare
${ZIPCODEINPUT}      xpath://*[@id="center-search-location"]
${ZIPCODE}     97236
${SEARCHAGAIN}      xpath://main[@id=\'main\']/div[2]/aside/div[2]/form/fieldset[4]/button
${VERCETNERNAME}       xpath://h2[contains(.,'Powell KinderCare')]
${SELECTCENTERNAME}     xpath://*[@id="300902"]/div/a/h2
${TUITIONOPENINGS}  xpath://a[contains(text(),'Tuition \& Openings')]
${INPUTTITLE}       xpath://h2[contains(.,'Powell KinderCare')]
${FFXPATH}      xpath://*[@id="iframe-tuition-modal"]
${FNXPATH}      xpath://input[@id='FirstName']
${FN}       First Name!!
${LNXPATH}      xpath://input[@id='LastName']
${LN}       Last Name!!
${EMXPATH}      xpath://input[@id='EmailAddress']
${EM}       test@test.com
${CEMXPATH}     xpath://input[@id='ConfirmEmailAddress']
${CEM}      test@test.com
${PNUMXPATH}    xpath://input[@id='PhoneNumber']
${PNUM}     555-555-5555
${CMBXPATH}     xpath://input[@id='FirstName']
${CMB}      Email Only


*** Keywords ***
I go to Kindercare Home Page
    Open Browser    ${DCURL}   ${BROWSER}   ${DELAY}
    Delete All Cookies
    ${COOKIES}    Get Cookies
    Log        ${COOKIES}

Home Page Title should be
    Title Should Be    ${HOMEPAGETITLE}

I click Find Your Center
    Click Element    ${ALLOW}
    Click Element        ${FINDCENTER}

It should have taken me to Center Search Results | KinderCare
    Title Should Be    ${SEARCHPAGETITLE}

I enter my zip code
    Clear Element Text    ${ZIPCODEINPUT}
    Input Text          ${ZIPCODEINPUT}     ${ZIPCODE}

Click Search Again
    Click Element       ${SEARCHAGAIN}

I can see the center and click Tuition and Openings
    Wait Until Page Contains Element    ${VERCETNERNAME}
    Element Text Should Be      ${VERCETNERNAME}       Powell KinderCare
    Click Element    ${TUITIONOPENINGS}

I can see Powell KinderCare
    Element Text Should Be    ${INPUTTITLE}         Powell KinderCare

I enter contact information
    element text should be    //h2[contains(.,'Powell KinderCare')]           Powell KinderCare
    Input First Name    ${FFXPATH}      ${FNXPATH}      ${FN}
    Input Last Name    ${LNXPATH}       ${LN}
    Input Email        ${EMXPATH}       ${EM}
    Input Confirm Email     ${CEMXPATH}      ${CEM}
    Input Phone Number      ${PNUMXPATH}      ${PNUM}
    capture page screenshot
    #Input Contact Me by    ${CMBXPATH}         ${CMB}

