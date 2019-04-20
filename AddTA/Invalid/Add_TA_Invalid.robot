*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    10.199.66.227
${LOGIN URL}    SoftEn2019/Sec2/Dailand/accout/login/login.php
${CreateClass URL}    SoftEn2019/Sec2/Dailand/teacher/create_class/create_class.php
${Success URL}    SoftEn2019/Sec2/Dailand/teacher/success.php
${Homepage URL}    SoftEn2019/Sec2/Dailand/teacher/home.php
${BROWSER}    Chrome
${USERNAME}    theerayut
${PASSWORD}    123123123
${Classroom Element}    //html/body/div/div/div/div[2]/div/div[1]/div/a
${Add TA Element}    //html/body/div/div/div[1]/div[2]/a[3]/p


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
    Wait Until Page Contains    Email not found!
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
    ${Add TA Location}=    Get Location
    Click Button    addTA_submit
    Location Should Be    ${Add TA Location}
    Close Browser

