#language : pt

Cenário Checkout : Finalizar compra com diferentes formas de pagamento

    Dado que eu tenho produtos no carrinho
    Quando eu clico em "Finalizar Compra" e preencho os dados de entrega, "<forma_de_pagamento>" e "Confirmar Pedido"
    Então sou redirecionado para a página de agradecimento e recebo um email com a confirmação do pedido

    Exemplos: 
        | forma_de_pagamento |
        | Cartão de Crédito  |
        | Boleto Bancário    |
        | PIX                |
