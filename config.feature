#language: pt


##Cenários##
Funcionalidade: Seleção de compra de item
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Itens Obrigatórios
Dado que eu acesse a página de um item no EBAC-SHOP
Quando eu for configurar meu item deve conter seleções de cores como:"azul, vermelho e laranja"
E seleçao de tamanho como:"XS, S, M, L E XL"
E ainda conter quantidade 
Então deve inserir o item ao carrinho

Cenário: Seleção de quantidade de itens
Dado que eu acesse a página de um item no EBAC-SHOP
Quando eu selecionar até "10" do mesmo produto
Então deve inserir o item ao carrinho

Cenário: Botão de limpar escolhas
Dado que eu acesse a página de um item no EBAC-SHOP
Quando eu for configurar meu item deve conter seleções de cores como:"azul, vermelho e laranja"
E selecionar o tamanho como:"XS, S, M, L E XL"
E  escolher a quantidade
E depois apertar o botão de "limpar"
Então todas as minhas seleções devem ser desselecionadas



##Contexto

Contexto:que eu acesse a página de um item no EBAC-SHOP

Cenário: Itens Obrigatórios

Quando eu for configurar meu item deve conter seleções de cores como:"azul, vermelho e laranja"
E seleçao de tamanho como:"XS, S, M, L E XL"
E ainda conter quantidade 
Então deve inserir o item ao carrinho

Cenário: Seleção de quantidade de itens
Quando eu selecionar até "10" do mesmo produto
Então deve inserir o item ao carrinho

Cenário: Botão de limpar escolhas
Quando eu for configurar meu item deve conter seleções de cores como:"azul, vermelho e laranja"
E selecionar o tamanho como:"XS, S, M, L E XL"
E  escolher a quantidade
E depois apertar o botão de "limpar"
Então todas as minhas seleções devem ser desselecionadas

##Esquemas de cenários

Cenário: Itens Obrigatórios
Dado que eu acesse a página de um item no EBAC-SHOP
Quando eu for configurar meu item deve conter seleções de <cores>
E seleçao de <tamanho>
E ainda conter <quantidade> 
Então deve inserir o item ao carrinho

Exemplos:
|cor|tamanho|quantidade|situacao|
|"azul"|"XL"|"5"|"Adicionado ao carrinho"|
|"vermelho"|"S"|"1"|"Adicionado ao carrinho"|
|"laranja"|"X"|"3"|"Adicionado ao carrinho"|


Cenário: Seleção de quantidade do mesmo item
Quando eu escolher a <quantidade> do meu item
E for no máximo 10
Então deve inserir o item ao carrinho

Exemplos:
|quantidade|situacao|
|"9"|"Item inserido ao carrinho"|
|"5"|"Item inserido ao carrinho"|
|"2"|"Item inserido ao carrinho"|

Cenário: Botão de limpar escolhas
Dado que eu acesse a página de um item no EBAC-SHOP
Quando eu for configurar meu item deve conter seleções de <cores>
E seleçao de <tamanho>
E ainda conter <quantidade> 
E depois apertar o <botao> de limpar
Então todas as minhas seleções devem ser desselecionadas

Exemplos:
|cor|tamanho|quantidade|botao|situacao|
|"azul"|"XL"|"5"|"limpar"|"Itens limpos"|
|"vermelho"|"S"|"1"|"limpar"|"Itens limpos"|
|"laranja"|"X"|"3"|"limpar"|"Itens limpos"|