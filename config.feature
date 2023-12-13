#language: pt


##Cenários##
Funcionalidade: Seleção de compra de item
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:que acessei a página de um item no EBAC-SHOP

Cenário: Itens Obrigatórios
Quando for configurar meu item deve selecionar "1" das variações de cores, selecionar pelo menos "1" tamanho
E selecionar a quantidade
Então deve inserir o item ao carrinho

Cenário: Seleção de quantidade de itens
Quando eu selecionar até "10" do mesmo produto
Então deve inserir o item ao carrinho

Cenário: Botão de limpar escolhas
Quando for configurar o item selecionar o tamanho, a cor e a quantidade
E depois apertar o botão de "limpar"
Então todas as minhas seleções devem ser desselecionadas
