#language: pt


Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Esquema do Cenário: Cadastro Válido
Dado que acessei a página de checkout
Quando deixar de preencher algum dado obrigatório 
Então deve exibir uma <mensagem> de alerta

Exemplos:
|mensagem|
|"Por favor preencha todos os campos obrigatórios"|

Cenário: Cadastro de email inválido
Dado que acessei a página de checkout
Quando preencher o <email>   
Então deve inserir a <mensagem> no campo de email

Exemplos:
|usuario|mensagem|
|"lucas.acky20gmail.com"|"Email inválido"|
|"joao.lucas20@gmail.cm"|"Email inválido"|
|"suelen.caldeira20@gmailcom"|"Email inválido"|

Cenário: Cadastro do checkout com campos vazios
Dado que acessei a página de checkout
Quando deixar algum campo vazio
Então deve exibir uma <mensagem> de alerta

Exemplos:
|mensagem|
|"Existem campos vazios!, Por favor preenchá-o"|
