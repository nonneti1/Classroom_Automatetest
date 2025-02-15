*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    localhost
${LOGIN URL}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/accout/login/login.php
${CreateClass URL}    classroom/teacher/create_class/create_class.php
${Success URL}    classroom/teacher/success.php
${Homepage URL}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/teacher/home.php
${BROWSER}    Chrome
${USERNAME}    theerayut
${PASSWORD}    123123123
${VALID STUDENT ID}    5830203709
${Classroom Element}    //html/body/div/div/div/div[2]/div/div[1]/div/a
${Add STUDENT Element}    //html/body/div[1]/div/div[1]/div[2]/a[4]/p

*** Test Cases ***
Open Homepage
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
Teacher login
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    ${Homepage URL}
    Click Element    ${Classroom Element}
    Click Element    ${Add STUDENT Element}
    Input Text    std_id    ${VALID STUDENT ID}
    Click Button    addStd_submit
    Wait Until Page Contains    สำเร็จ
    Close Browser