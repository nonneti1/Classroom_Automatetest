*** Settings ***
Library    Selenium2Library

*** Variables ***
${LOGIN URL}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/accout/login/login.php
${Homepage URL}    http://10.199.66.227/SoftEn2019/Sec2/Dailand/student/home.php
${BROWSER}    Chrome
${USERNAME}    A01
${PASSWORD}    123123123
${VALID TEACHER EMAIL}    chitsutha@kku.ac.th
${Classroom Element}    //html/body/div/div/div/div[2]/div/div[1]/div/a
${Add TEACHER Element}    //html/body/div[1]/div/div[1]/div[2]/a[2]/p
${TA}    //*[@id="navbarSupportedContent"]/ul[1]/li[2]/a

*** Test Cases ***
INVALID_TEACHER_EMAIL
    Set Selenium Speed    0.5 seconds
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Location Should Be    ${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    1
    Click Button    login_submit
    Location Should Be    ${Homepage URL}
    Click Element    ${TA}
    Click Element    ${Classroom Element}
    Click Element    ${Add TEACHER Element}
    Input Text    email    chitsutha@เคเคยูเมลล์.คอม
    Click Button    addTA_submit
    Wait Until Page Contains    Email not found!
    Close Browser

INVALID_EMPTY_EMAIL
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Location Should Be    ${LOGIN URL}
    Input Text    username    ${USERNAME}
    Input Text    pass    ${PASSWORD}
    Select Radio Button    login_type    1
    Click Button    login_submit
    Location Should Be    ${Homepage URL}
    Click Element    ${TA}
    Click Element    ${Classroom Element}
    Click Element    ${Add TEACHER Element}
    ${LOCATION}=    Get Location
    Click Button    addTA_submit
    Location Should Be    ${LOCATION}
    Close Browser

	
