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
${FNXPATH}      name:FirstName
${CODE}     document.querySelector("#FirstName")

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
    Input First Name        ${FNXPATH}
