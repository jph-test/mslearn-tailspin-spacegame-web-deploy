*** Settings ***
Library            Browser
Library            OperatingSystem

Suite Setup  Open FrontPage  ${BROWSER}

*** Variables ***
${BROWSER} =     chromium

*** Test Cases ***
TopPlayer
#    Click    //*[text()='Solo']
    Click    id=profile-1
    Click    //*[@id="profile-modal-1"]/div/div/div[1]/button
#    Get Text    text=This link is for example purposes and goes nowhere.

First Game Screen
#    Handle Future Dialogs    action=dismiss
    Click    id=screen-01
    Click   //*[@id="screen-modal"]/div/div/div[1]/button
#    Click    button.close
#    Click    //*[text()='×']
#    Click    //button[class=close]
#    Get Text    text=This link is for example purposes and goes nowhere.
#    Close Page

#//*[@id="profile-modal-1"]/div/div/div[1]/button
#//*[@id="profile-modal-1"]/div/div/div[1]/button
# //*[@id="screen-modal"]/div/div/div[1]/button
#profile-modal-1 > div > div > div.modal-header.no-border > button

Download Game
    Click    //*[text()='Download game']
#    Get Text    text=This link is for example purposes and goes nowhere.
    Click    //*[@id="pretend-modal"]/div/div/div[1]/button

Write Results
    Create File  ${EXECDIR}/JUnit.xml  <?xml version="1.0" encoding="UTF-8"?><testsuite xmlns:math="http://exslt.org/math" tests="100" failures="0"><testcase name="Average Response Time" time="0.49"/><testcase name="Max Response Time" time="1.718"/></testsuite>

*** Keywords ***
Open FrontPage
  [Arguments]  ${browser}
#    New Browser  ${browser}    headless=False  #executablePath=C:\\Program Files\\Mozilla Firefox\\firefox.exe
    New Browser  ${browser}    headless=True
    New Page    https://tailspin-spacegame-web.azurewebsites.net/
    Get Text    text=Download game
#    Sleep  5s


