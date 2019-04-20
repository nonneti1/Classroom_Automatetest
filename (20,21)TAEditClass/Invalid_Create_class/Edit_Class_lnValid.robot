***Settings***
Library    Selenium2Library

***Variables***
${BROWSER}    Chrome
${DELAY}    2
${VALID USERNAME}    A01
${VALID PASSWORD}    123123123
${Add Edit Element}    //html/body/div[1]/div/div[1]/div[2]/a[5]/p
${LOGIN URL}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/accout/login/login.php
${Classroom Element}    //html/body/div/div/div/div[2]/div/div[1]/div/a
${Edit_Url}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/teacher/edit_class/edit_class.php?class_id=b268e8044e

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
	Input Text    year    2017
	Input Text    term    1
    Input Text    section    1
	Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat.
	Click Button    create_submit
	Location Should Be    ${Edit_Url}



	