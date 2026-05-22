Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background:
        Given que eu acesse a página de autenticação da EBAC-SHOP

    Scenario Outline: Dados válidos
        When eu inserir o <usuario>
        And a <senha>
        Then deve ser direcionado para a tela de checkout

        Examples:
            | usuario   | senha       |
            | carinha10 | 123423      |
            | usuario08 | jkgdhskfgjh |

    Scenario: Dados inválidos
        When eu inserir o "link20"
        And a "zelda"
        Then deve aparecer a mensagem "Usuário ou senha inválidos"