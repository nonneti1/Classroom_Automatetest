***Settings***
Library    Selenium2Library

***Variables***
${BROWSER}    Chrome
${DELAY}    2
${VALID USERNAME}    theerayut
${VALID PASSWORD}    123123123
${INVALID USERNAME}    teetong
${INVALID PASSWORD}    abc123456
${Add Edit Element}    //html/body/div[1]/div/div[1]/div[2]/a[5]/p
${LOGIN URL}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/accout/login/login.php
${Classroom Element}    //html/body/div/div/div/div[2]/div/div[1]/div/a

***Testcases***
VALID-LOGIN
    Open Browser    ${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
	Input Text    username    ${VALID USERNAME}
	Input Text    pass    ${VALID PASSWORD}
	Select Radio Button    login_type    0
    Click Button    login_submit
	Click Element    ${Classroom Element}
	Click Element    ${Add Edit Element}
	Input Text    year    2019
	Input Text    term    1
	Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat.
	Click Button    create_submit
	Page Should Contain    สำเร็จ


	