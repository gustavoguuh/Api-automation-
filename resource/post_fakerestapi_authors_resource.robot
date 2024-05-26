*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${HOST}  https://fakerestapi.azurewebsites.net

# ROTAS
${ADD_NEW_AUTHOR}  api/v1/Authors

*** Keywords ***
Adicionar um novo Autor
    [Arguments]    ${id}    ${firstName}     ${lastName}  

    
    &{body}     Create Dictionary  id=${id}   firstName=${firstName}  lastName=${lastName}

    ${response}=  POST  url=${HOST}/${ADD_NEW_AUTHOR}   json=${body}
     [Return]    ${response}

