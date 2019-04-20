*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    10.199.66.227/SoftEn2019/Sec2/Dailand
${LOGIN URL}    accout/login/login.php
${CreateClass URL}    teacher/create_class/create_class.php
${Success URL}    teacher/success.php
${Homepage URL}    teacher/home.php
${BROWSER}    Chrome
${USERNAME}    theerayut
${PASSWORD}    123123123

*** Test Cases ***
Open Homepage
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Set Selenium Speed    0.5 seconds

Teacher login
	Input Text    username    ${USERNAME}
	Input Text    pass    ${PASSWORD}
	Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}

Create Class
    Go To    http://${SERVER}/${CreateClass URL}
    Location Should Be    http://${SERVER}/${CreateClass URL}
    Input Text    class_name    Software Testing
    Input Text    subject_code    322156
    Input Text    year    2019
    Input Text    term    1
    Input Text    section    1
    Input Text    des    Introducing to Software Testing Using Robotframework.
    Click Button    create_submit
    Page Should Contain    สำเร็จ
    Location Should Be    http://${SERVER}/${Success URL}
    Close Browser