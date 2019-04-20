*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    10.199.66.227/SoftEn2019/Sec2/Dailand
${LOGIN URL}    accout/login/login.php
${CreateClass URL}    teacher_assistant/create_class/create_class.php
${Success URL}    teacher/success.php
${Homepage URL}    student/home.php
${BROWSER}    Chrome
${USERNAME}    A01
${PASSWORD}    123123123

*** Test Cases ***
Open Homepage
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
    Location Should Be    http://${SERVER}/${LOGIN URL}
	Maximize Browser Window

Teacher login
	Input Text    username    ${USERNAME}
	Input Text    pass    ${PASSWORD}
	Select Radio Button    login_type    1
    Click Button    login_submit
    Click Element    //*[@id="navbarSupportedContent"]/ul[1]/li[3]/a

Create Class
    Location Should Be    http://10.199.66.227/SoftEn2019/Sec2/Dailand/student/teacher_assistant/create_class/create_class.php
    Input Text    class_name    Software Testing
    Input Text    subject_code    322156
    Input Text    year    2019
    Input Text    term    1
    Input Text    section    1
    Input Text    des    Introducing to Software Testing Using Robotframework.
    Click Button    create_submit
    Page Should Contain    สำเร็จ
    Location Should Be    http://10.199.66.227/SoftEn2019/Sec2/Dailand/student/success.php
    Close Browser