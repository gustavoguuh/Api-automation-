*** Settings ***
Resource    ../resource/get06_reqres_users_resource.robot

*** Variables ***


*** Keywords ***

  

*** Test Cases ***
TC01 - Realiza Busca de User
    ${response_keyword}=    Procurar por user id 2

    Should Be Equal As Strings    ${response_keyword.status_code}    200