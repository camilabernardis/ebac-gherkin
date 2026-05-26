            #language: pt

            Funcionalidade: Escolha de produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto Augusta Pullover Jacket no site da EBAC-SHOP

            Esquema do Cenário: produto válido
            Quando eu escolher a <cor> e o <tamanho>
            E adicionar a <quantidade>
            Então o produto deve ser adicionado ao carrinho

            Exemplos:
            | cor    | tamanho | quantidade |
            | Blue   | M       | 1          |
            | Orange | S       | 5          |
            | Red    | L       | 10         |

            Cenário: quantidade inválida
            Quando eu escolher a cor blue e o tamanho XL
            E adicionar a quantidade 11
            Então deve aparecer a mensagem "Quantidade máxima permitida para esse item é 10"

            Esquema do Cenário: produto sem cor, tamanho ou quantidade
            Quando eu deixar o <campo> sem preencher
            E tentar adicionar ao carrinho
            Então deve aparecer a mensagem "Item selecionado inválido, por favor verifique o campo <campo> e tente novamente"

            Exemplos:
            | campo      |
            | cor        |
            | tamanho    |
            | quantidade |

            Cenário: limpar o carrinho
            Dado que eu já tenha adicionado produtos no carrinho
            Quando eu clicar em "limpar"
            Então o carrinho deve estar vazio
