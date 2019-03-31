*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    localhost
${LOGIN URL}    classroom/accout/login/login.php
${CreateClass URL}    classroom/teacher/create_class/create_class.php
${Success URL}    classroom/teacher/success.php
${Homepage URL}    classroom/teacher/home.php
${BROWSER}    Chrome
${USERNAME}    theerayut
${PASSWORD}    123123123
${Classroom Element}    //html/body/div/div/div/div[2]/div/div[1]/div/a
${Add TA Element}    //html/body/div/div/div[1]/div[2]/a[2]/p

*** Test Cases ***
TC1_Invalid_Email
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${Classroom Element}
    Click Element    ${Add TA Element}
    Input Text    email    สมเกียรติ@ไทยเมลล์.คอม
    Click Button    addTA_submit
    Wait Until Page Contains    Please enter valid email.
    Close Browser

TC2_Invalid_Empty_Email
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${Classroom Element}
    Click Element    ${Add TA Element}
    Click Button    addTA_submit
    Wait Until Page Contains    Please enter email.
    Close Browser