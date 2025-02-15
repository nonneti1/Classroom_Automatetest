*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}    10.199.66.227/SoftEn2019/Sec2/Dailand
${LOGIN URL}    accout/login/login.php
${CreateClass URL}    teacher/create_class/create_class.php
${Homepage URL}    teacher/home.php
${BROWSER}    Chrome
${USERNAME}    theerayut
${PASSWORD}    123123123
${COURSE PATH}    //html/body/div/div/div/div[2]/div/div[1]/div/a
${EDIT PATH}    //html/body/div[1]/div/div[1]/div[2]/a[5]/p

*** Test Cases ***
TC1_invalid_Class_name
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${COURSE PATH}
	Click Element    ${EDIT PATH}
	${CLASS URL}=    Get Location
    Input Text    class_name    !@()()*+=
    Input Text    subject_code    123456
    Input Text    year    2019
    Input Text    term    1
    Input Text    section    1
    Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat ac erat molestie varius. Pellentesque convallis consequat mauris vel tristique.
    Click Button    create_submit
    Location Should Be    ${CLASS URL}
    Close Browser

TC2_invalid_empty_Class_name
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${COURSE PATH}
	Click Element    ${EDIT PATH}
	${CLASS URL}=    Get Location
	Clear Element Text    class_name
    Input Text    subject_code    239126
    Input Text    year    2019
    Input Text    term    1
    Input Text    section    1
    Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat ac erat molestie varius. Pellentesque convallis consequat mauris vel tristique.
    Click Button    create_submit
    Location Should Be    ${CLASS URL}
    Close Browser

TC3_invalid_subject_code
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${COURSE PATH}
	Click Element    ${EDIT PATH}
	${CLASS URL}=    Get Location
    Input Text    class_name    Physicals Science
    Input Text    subject_code    $$--=*
    Input Text    year    2019
    Input Text    term    1
    Input Text    section    1
    Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat ac erat molestie varius. Pellentesque convallis consequat mauris vel tristique.
    Click Button    create_submit
    Location Should Be    ${CLASS URL}
    Close Browser

TC4_invalid_empty_subject_code
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${COURSE PATH}
	Click Element    ${EDIT PATH}
	${CLASS URL}=    Get Location
    Input Text    class_name    Sport Education
	Clear Element Text    subject_code
    Input Text    year    2019
    Input Text    term    1
    Input Text    section    1
    Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat ac erat molestie varius. Pellentesque convallis consequat mauris vel tristique.
    Click Button    create_submit
    Location Should Be    ${CLASS URL}
    Close Browser

TC5_invalid_year
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${COURSE PATH}
	Click Element    ${EDIT PATH}
	${CLASS URL}=    Get Location
    Input Text    class_name    Game Maker
    Input Text    subject_code    200584
    Input Text    year    2015
    Input Text    term    1
    Input Text    section    1
    Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat ac erat molestie varius. Pellentesque convallis consequat mauris vel tristique.
    Click Button    create_submit
    Location Should Be    ${CLASS URL}
    Close Browser

TC6_invalid_empty_year
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${COURSE PATH}
	Click Element    ${EDIT PATH}
	${CLASS URL}=    Get Location
    Input Text    class_name    Green Herb
    Input Text    subject_code    431235
	Clear Element Text    year
    Input Text    term    2
    Input Text    section    1
    Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat ac erat molestie varius. Pellentesque convallis consequat mauris vel tristique.
    Click Button    create_submit
    Location Should Be    ${CLASS URL}
    Close Browser

TC7_invalid_term
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${COURSE PATH}
	Click Element    ${EDIT PATH}
	${CLASS URL}=    Get Location
    Input Text    class_name    User Expeirence
    Input Text    subject_code    322582
    Input Text    year    2018
    Input Text    term    4
    Input Text    section    1
    Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat ac erat molestie varius. Pellentesque convallis consequat mauris vel tristique.
    Click Button    create_submit
    Location Should Be    ${CLASS URL}
    Close Browser

TC8_invalid_empty_term
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${COURSE PATH}
	Click Element    ${EDIT PATH}
	${CLASS URL}=    Get Location
    Input Text    class_name    User Interface
    Input Text    subject_code    322583
    Input Text    year    2018
	Clear Element Text    term
    Input Text    section    1
    Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat ac erat molestie varius. Pellentesque convallis consequat mauris vel tristique.
    Click Button    create_submit
    Location Should Be    ${CLASS URL}
    Close Browser

TC9_invalid_section
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${COURSE PATH}
	Click Element    ${EDIT PATH}
	${CLASS URL}=    Get Location
    Input Text    class_name    PM2.5
    Input Text    subject_code    431235
    Input Text    year    2018
    Input Text    term    2
    Input Text    section    0
    Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat ac erat molestie varius. Pellentesque convallis consequat mauris vel tristique.
    Click Button    create_submit
    Location Should Be    ${CLASS URL}
    Close Browser

TC10_invalid_empty_section
    Open Browser    http://${SERVER}/${LOGIN URL}    ${BROWSER}
	Maximize Browser Window
    Location Should Be    http://${SERVER}/${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    0
    Click Button    login_submit
    Location Should Be    http://${SERVER}/${Homepage URL}
    Click Element    ${COURSE PATH}
	Click Element    ${EDIT PATH}
	${CLASS URL}=    Get Location
    Input Text    class_name    Road to Pro Player
    Input Text    subject_code    399214
    Input Text    year    2019
    Input Text    term    2
	Clear Element Text    section
    Input Text    des    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat ac erat molestie varius. Pellentesque convallis consequat mauris vel tristique.
    Click Button    create_submit
    Location Should Be    ${CLASS URL}
    Close Browser