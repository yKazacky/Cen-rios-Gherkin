#language: pt

##Cenários##
Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Cenário: Autenticação Válida
Dado que eu acesse a página de login da EBAC-SHOP
Quando eu digitar o usuário "lucas.acky20@gmail.com"
E a senha "123456"
Então deve ser redirecionado a tela de "checkout"

Cenário: Autenticação Inválida
Dado que eu acesse a página de login da EBAC-SHOP
Quando eu digitar o usuário "lucass.acky20@gmail.com"
E a senha "123456"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
##Contexto
Contexto: que eu acesse a página de login da EBAC-SHOP

Cenário: Autenticação Válida
Quando eu digitar o usuário "lucas.acky20@gmail.com"
E a senha "123456"
Então deve ser redirecionado a tela de "checkout"

Cenário: Autenticação Inválida
Quando eu digitar o usuário "lucass.acky20@gmail.com"
E a senha "123456"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
##Esquemas de cenários

Esquema do Cenário: Autenticação Válida
Dado que eu acesse a página de login da EBAC-SHOP
Quando eu digitar o <usuario> 
E a <senha>
Então deve ser redirecionado a <tela>

Exemplos:
|usuario|senha|mensagem|
|"lucas.acky20@gmail.com"|"123456"|"Checkout"|
|"joao.marcus20@gmail.com"|"123456"|"Checkout"|
|"maria.clara20@gmail.com"|"123456"|"Checkout"|


Cenário: Autenticação Inválida
Dado que eu acesse a página de login da EBAC-SHOP
Quando eu digitar o <usuario>
E a <senha> 
Então deve exibir uma <mensagem> de alerta 

Exemplos:
|usuario|senha|mensagem|
|"lucas.acky20@gmail.com"|"123455"|"Usuário ou senha inválida"|
|"joao.marcus20@gmail.com"|"123455"|"Usuário ou senha inválida"|
|"maria.clara20@gmail.com"|"123455"|"Usuário ou senha inválida"|










