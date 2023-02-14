*** Settings ***
Library  AppiumLibrary
*** Variables ***
${username}
${accesskey}
${REMOTE_URL}       https://LT_USERNAME:LT_ACCESS_KEY@mobile-hub.lambdatest.com/wd/hub
${TIMEOUT}          3000
*** Keywords ***
Open test app
    &{LT_Options}    Create Dictionary
    ...    isRealMobile=true
    ...    platformVersion=12
    ...    deviceName=Pixel 6
    ...    app=APP_URL
    ...    w3c=true
    ...    platformName=Android
    &{DESIRED_CAPABILITIES}    Create Dictionary
    ...    LT:Options=&{LT_Options}
    Open Application  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
Close test app
    Close Application
