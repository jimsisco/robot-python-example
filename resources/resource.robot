*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.

Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${DELAY}          2
${CREDENTIALS_PATH_CSV} =  /Users/jamessiscaretti/Champions/data/testdata.csv
${DCURL}      https://www.kindercare.com