            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Dado que eu estou na página de um produto
            quando eu seleciono a cor "Azul"
            E seleciono o tamanho "M"
            E seleciono a quantaidade "2"
            Então o produto deve ser configurado com as opções selecionadas

            Cenário:Limitação de quantidade
            Dado que eu estou na página de um produto
            Quando eu tento adicionar mais de 10 unidades ao carrinho
            Então o sistema deve exibir uma mensagem de erro indicando o limite

            Cenário outline: Configuração com diferentes opções
            Dado que eu estou na página de um produto
            Quando eu seleciono a cor "<cor>"
            E seleciono o tamanho "<tamanho>"
            E seleciono a quantidade "<quantidade>"
            Então o produto deve ser configurado com as opções selecionadas

            | cor      | tamanho   | quantidade   |
            | -------- | --------- | ------------ |
            | Vermelho | P         | 1            |
            | Preto    | G         | 5            |

            Funcionalidade: Finalizar Compra

             Como um cliente da EBAC-SHOP
             Quero finalizar minha compra
             Para que possa receber meus produtos

             Cenário: Limpar carrinho
             Dado que eu tenho produtos no carrinho
             Quando eu clico no botão "Limpar"
             Então o carrinho deve estar vazio