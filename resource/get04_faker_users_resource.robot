# robot -d ./results -L trace .\tests\get04_faker_users_test.robot

*** Settings ***
Library  RequestsLibrary

*** Variables ***
${HOST}  https://fakerestapi.azurewebsites.net

#Rotas
${GET_USER}  /api/v1/Users

*** Keywords ***
Faz get de Users
  ${response}=  GET  url=${HOST}/${GET_USER}



