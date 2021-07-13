*** Settings ***
Library    SeleniumLibrary  
Suite Setup    Log      This is Test Suite setup
Test Setup        Log    This is Test setup
Suite Teardown    Log    This is Test Suite teardown 
Test Teardown    Log    This is Test teardown   
*** Test Cases ***
MyFirstTest
    Log    HelloWorld..
    
FirstSeleniumTest
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Click Button    id=L2AGLb
    Input Text    name=q    Automation Step By Step
    Press Keys    name=q    ENTER
    Sleep    5     
    Close Browser
    Log    Test Completed
    
SampleLoginTest
    [Documentation]    this is sample browser test
    Open Browser     ${URL}    chrome
    Set Browser Implicit Wait    5  
    LoginKW
    Click Element    id=welcome 
    Click Element    link=Logout    
    Close Browser
    Log    Test Completed 
    Log    This test was executed by %{username} on %{os} 
    
*** Variables ***
 #http://demowebshop.tricentis.com/ worldofreena@gmail.test    Tosca1234!  
${URL}     https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}  Admin     admin123
&{LOGINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    ${CREDENTIALS}[0]
    Input Password    id=txtPassword    ${CREDENTIALS}[1]
    Click Button    id=btnLogin  
    
 
