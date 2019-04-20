*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}   10.199.66.227
${LOGIN URL}    SoftEn2019/Sec2/Dailand/accout/login/login.php
${CreateClass URL}    SoftEn2019/Sec2/Dailand/teacher/create_class/create_class.php
${Success URL}    SoftEn2019/Sec2/Dailand/teacher/success.php
${Homepage URL}    SoftEn2019/Sec2/Dailand/teacher/home.php
${BROWSER}    Chrome
${USERNAME}    theerayut
${PASSWORD}    123123123
${VALID TA EMAIL}    chitsutha@kku.ac.th 
${Classroom Element}    //html/body/div/div/div/div[2]/div/div[1]/div/a
${Add TA Element}    //html/body/div/div/div[1]/div[2]/a[2]/p

*** Test Cases ***
Open Homepage
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
    Location Should Be    http://${SERVER}/${LOGIN URL}

Teacher login
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${Classroom Element}
    Click Element    ${Add TA Element}
    Input Text    email    ${VALID TA EMAIL}
    Click Button    addTA_submit
    Wait Until Page Contains    สำเร็จ
    Close Browser