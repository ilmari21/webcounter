*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Test Setup  Open And Reset Counter
Suite Teardown  Close Browser

*** Test Cases ***
Counter can be set to a desired value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  21
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu 21 kertaa
