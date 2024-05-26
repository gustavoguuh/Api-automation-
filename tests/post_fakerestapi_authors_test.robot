*** Settings ***
Resource    ../resource/post_fakerestapi_authors_resource.robot

*** Variables ***


*** Keywords ***


*** Test Cases ***
TC01 - Realizar Adição de um novo autor
   ${response_keyword}=  Adicionar um novo Autor  id=1  firstName=zeca  lastName=pimenteira 

    Should Be Equal As Strings    ${response_keyword.status_code}    200
