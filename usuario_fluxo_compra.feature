#language: pt
Funcionalidade: Configuração e Adição de Produtos ao Carrinho

cenario: Campos Obrigatórios

Dado que eu esteja na página do produto
Quando eu tentar adicionar o produto ao carrinho sem selecionar nenhuma opção
Então o sistema deve exibir a mensagem de erro "Por favor, selecione todas as opções necessárias"

cenario: Limite de Quantidade

Dado que eu esteja na página do produto
Quando eu tentar adicionar mais de 10 unidades ao carrinho
Então o sistema deve exibir a mensagem de erro "A quantidade máxima por produto é 10"

cenario: Opção Indisponível

Dado que a cor "Azul" não esteja disponível no tamanho "P"
Quando eu selecionar a cor "Azul" e o tamanho "P"
Então o sistema deve exibir a mensagem de erro "A opção selecionada não está disponível"

cenario: Adicionar Produto ao Carrinho

Dado que eu configure um produto com as opções "Azul", "M" e "2"
Quando eu clicar em "Adicionar ao Carrinho"
Então o produto configurado deve ser adicionado ao carrinho

cenario : Configuração com Diferentes Opções

Dado que eu esteja na página do produto
Quando eu selecionar a cor "<cor>", tamanho "<tamanho>" e quantidade "<quantidade>"
Então o produto deve ser configurado com as opções selecionadas

cor     |	tamanho|	quantidade
Vermelho|	P      |	1
Preto   |	G      |	5

cenario: Quantidade Negativa

Dado que eu esteja na página do produto
Quando eu tentar adicionar uma quantidade negativa ao carrinho
Então o sistema deve exibir a mensagem de erro "A quantidade deve ser positiva"

Cenário: Limpar carrinho

Dado que eu tenho produtos no carrinho
Quando eu clico no botão "Limpar"
Então o carrinho deve estar vazio.
