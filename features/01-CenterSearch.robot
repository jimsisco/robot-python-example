*** Settings ***
Documentation     A test suite foucsed on search for a center
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
#Resource          ../resources/resource.robot
#Resource          ../resources/DataManager.robot
Resource          ../features/CenterSearchKW.robot
#Resource          ../resources/AccountPageApp.robot


*** Variables ***

*** Test Cases ***

#robot -d results features/01-CenterSearch.robot

Center Search by ZIP
    #${TestData} =  Get CSV Data  ${CREDENTIALS_PATH_CSV}
    I go to Kindercare Home Page
    Home Page Title should be
    I click Find Your Center
    It should have taken me to Center Search Results | KinderCare
    I enter my zip code
    Click Search Again
    I can see the center and click Tuition and Openings
    I Can See Powell KinderCare
    I enter contact information

[teardown]
    Close Window
    Close Browser