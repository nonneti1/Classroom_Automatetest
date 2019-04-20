***Settings***
Library    Selenium2Library

***Variables***
${BROWSER}    Chrome
${DELAY}    0
${VALID USERNAME}    A01
${VALID PASSWORD}    123123123
${INVALID USERNAME}    teetong
${INVALID PASSWORD}    abc123456
${LOGIN URL}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/accout/login/login.php
${SUCCESS URL}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/student/home.php

***Testcases***
VALID-LOGIN
    Open Browser    ${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
	Input Text    username    ${VALID USERNAME}
	Set Selenium Speed    0.5 seconds
	Input Text    pass    ${VALID PASSWORD}
	Select Radio Button    login_type    1
    Click Button    login_submit
	Location Should Be    ${SUCCESS URL}
    Close Browser

INVALID-USERNAME
    Open Browser    ${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
	Input Text    username    ${INVALID USERNAME}
	Input Text    pass    ${VALID PASSWORD}
	Select Radio Button    login_type    1
    Click Button    login_submit
	Page Should Contain    Username or password is incorrect.
    Close Browser

INVALID-PASSWORD
    Open Browser    ${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
	Input Text    username    ${VALID USERNAME}
	Input Text    pass    ${INVALID PASSWORD}
	Select Radio Button    login_type    1
    Click Button    login_submit
	Page Should Contain    Username or password is incorrect.
    Close Browser

EMPTY-PASSWORD
    Open Browser    ${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
	Input Text    username    ${VALID USERNAME}
	Select Radio Button    login_type    1
    Click Button    login_submit
	Page Should Contain    Username or password is incorrect.
    Close Browser

EMPTY-USERNAME-PASSWORD
    Open Browser    ${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Click Button    login_submit
	Page Should Contain    Please enter username and password.
    Close Browser