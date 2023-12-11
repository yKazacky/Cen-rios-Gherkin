#language: pt

##Cenários##
Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra


Cadastro Válido
Dado que eu acesse a página de checkout
Quando preencher os dados obrigatórios como nome:"lucas"
E sobrenome:"acky"
E endereço:"rua joao batista n 1"
E telefone:"310000-0000"
E email:"lucas.acky20@gmail.com"
Então a compra foi "finalizada com sucesso"

Cenário: Cadastro de email inválido
Dado que eu acesse a página de checkout
Quando preencher o email "lucas.ackygmail.com"   
Então deve inserir a mensagem "Email inválido" no campo de email

Cenário: Cadastro do checkout com campos vazios
Dado que eu acesse a página de checkout
Quando possuir algum desses campos vazios como nome:"lucas"
E sobrenome:"acky"
E endereço:" "
E telefone:"310000-0000"
E email:"lucas.acky20@gmail.com" 
Então deve exibir uma mensagem de alerta:"Todos os campos possuindo * devem ser preenchidos"


##Contexto
Contexto: que eu acesse a página de checkout

Cenário: Cadastro Válido
Quando preencher os dados obrigatórios como nome:"lucas"
E sobrenome:"acky"
E endereço:"rua joao batista n 1"
E telefone:"310000-0000"
E email:"lucas.acky20@gmail.com"
Então a compra foi "finalizada com sucesso"

Cenário: Cadastro de email inválido
Quando preencher o email "lucas.ackygmail.com"   
Então deve inserir a mensagem "Email inválido" no campo de email

Cenário: Cadastro do checkout com campos vazios
Quando possuir algum desses campos vazios como nome:"lucas"
E sobrenome:"acky"
E endereço:" "
E telefone:"310000-0000"
E email:"lucas.acky20@gmail.com" 
Então deve exibir uma mensagem de alerta:"Todos os campos possuindo * devem ser preenchidos"
##Esquemas de cenários

Esquema do Cenário: Cadastro Válido
Dado que eu acesse a página de checkout
Quando preencher os dados obrigatórios como <nome>
E <sobrenome>
E <endereco>
E <telefone>
E <email>
Então a compra foi:<situacao>

Exemplos:
|nome|sobrenome|endereco|telefone|email|situacao|
|"lucas"|"acky"|"rua joao batista n 1"|"310000-0000"|"lucas.acky20@gmail.com"|"Realizada com sucesso"|
|"joao"|"lucas"|"rua gomes de freitas n 148"|"311111-1111"|"joao.lucas20@gmail.com"|"Realizada com sucesso"|
|"suelen"|"caldeira"|"rua paulo ramirez n 35"|"312222-2222"|"suelen.caldeira20@gmail.com"|"Realizada com sucesso"|


Cenário: Cadastro de email inválido
Dado que eu acesse a página de checkout
Quando preencher o email "lucas.ackygmail.com"   
Então deve inserir a mensagem "Email inválido" no campo de email

Exemplos:
|usuario|mensagem|
|"lucas.acky20gmail.com"|"Email inválido"|
|"joao.lucas20@gmail.cm"|"Email inválido"|
|"suelen.caldeira20@gmailcom"|"Email inválido"|

Cenário: Cadastro do checkout com campos vazios
Dado que eu acesse a página de checkout
Quando possuir algum desses campos vazios como nome:"lucas"
E sobrenome:"acky"
E endereço:" "
E telefone:"310000-0000"
E email:"lucas.acky20@gmail.com" 
Então deve exibir uma mensagem de alerta:"Todos os campos possuindo * devem ser preenchidos"

Exemplos:
|nome|sobrenome|endereco|telefone|email|situacao|
|"lucas"|"acky"|"      "|"310000-0000"|"lucas.acky20@gmail.com"|"Todos os campos possuindo * devem ser preenchidos"|
|"     "|"lucas"|"rua gomes de freitas n 148"|"311111-1111"|"joao.lucas20@gmail.com"|"Todos os campos possuindo * devem ser preenchidos"|
|"suelen"|"caldeira"|"rua paulo ramirez n 35"|"        "|"suelen.caldeira20@gmail.com"|"Todos os campos possuindo * devem ser preenchidos"|