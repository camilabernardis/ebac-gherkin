            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Esquema do Cenário: Dados válidos
            Quando eu inserir o <usuario>
            E a <senha>
            Então deve ser direcionado para a tela de checkout

            Exemplos:
            | usuario   | senha       |
            | carinha10 | 123423      |
            | usuario08 | jkgdhskfgjh |

            Cenário: Dados inválidos
            Quando eu inserir o "link20"
            E a "zelda"
            Então deve aparecer a mensagem "Usuário ou senha inválidos"