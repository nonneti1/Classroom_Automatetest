*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    localhost
${LOGIN URL}    classroom/accout/login/login.php
${CreateClass URL}    classroom/teacher/create_class/create_class.php
${Success URL}    classroom/teacher/success.php
${Homepage URL}    classroom/teacher/home.php
${BROWSER}    Chrome
${USERNAME}    t01@t.com
${PASSWORD}    123

*** Test Cases ***
Open Homepage
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
    Location Should Be    http://${SERVER}/${LOGIN URL}

Teacher login
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}

Create Class
    Go To    http://${SERVER}/${CreateClass URL}
    Location Should Be    http://${SERVER}/${CreateClass URL}
    Input Text    class_name    Software Testing
    Input Text    subject_code    322156
    Input Text    year    2019
    Input Text    term    1
    Input Text    des    Introducing to Software Testing Using Robotframework.
    Click Button    create_submit
    Page Should Contain    สำเร็จ
    Location Should Be    http://${SERVER}/${Success URL}
    Close Browser