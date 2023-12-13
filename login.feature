#language: pt

##Cenários##
Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Cenário: Autenticação Válida
Dado que acessei a página de login da EBAC-SHOP
Quando eu digitar o usuário "lucas.acky20@gmail.com"
E a senha "123456"
Então deve ser redirecionado a tela de "checkout"

Cenário: Autenticação Inválida
Dado que acessei a página de login da EBAC-SHOP
Quando eu digitar o usuário "lucass.acky20@gmail.com"
E a senha "123456"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"










