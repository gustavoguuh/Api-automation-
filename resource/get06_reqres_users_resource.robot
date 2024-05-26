*** Settings ***
Library    RequestsLibrary
Library    String
*** Variables ***

${HOST}    https://reqres.in/api 

#ROTAS
${GET_SEARCH_USERS}    users/id-produto
*** Keywords ***

Procurar por user id ${id}
    &{headers}    Create Dictionary    accept=application/json    Content-type=application/json

    ${GET_SEARCH_USERS}=  Replace String  ${GET_SEARCH_USERS}  id-produto  ${id}

    ${response}=    GET    url=${HOST}/${GET_SEARCH_USERS}    headers=&{headers}

    [Return]    ${response}

