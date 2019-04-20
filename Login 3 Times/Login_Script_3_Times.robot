***Settings***
Library    Selenium2Library

***Variables***
${BROWSER}    Chrome
${DELAY}    2
${VALID USERNAME}    theerayut
${VALID PASSWORD}    123123123
${INVALID USERNAME}    teetong
${INVALID PASSWORD}    abc123456
${LOGIN URL}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/accout/login/login.php
${SUCCESS URL}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/teacher/home.php

***Testcases***
VALID-LOGIN
    Open Browser    ${LOGIN URL}    ${BROWSER}
	Set Selenium Speed    0.5 seconds
	Maximize Browser Window
	Input Text    username    ${VALID USERNAME}
	Input Text    pass    123127
	Select Radio Button    login_type    0
    Click Button    login_submit
	Input Text    username    ${VALID USERNAME}
	Input Text    pass    18317
	Select Radio Button    login_type    0
	Click Button    login_submit
	Input Text    username    ${VALID USERNAME}
	Input Text    pass    18317
	Select Radio Button    login_type    0
	Click Button    login_submit
	Input Text    username    ${VALID USERNAME}
	Input Text    pass    123123123
	Select Radio Button    login_type    0
	Click Button    login_submit
	Page Should Contain    Account is locked. Please contact admin.
  