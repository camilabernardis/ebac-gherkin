            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero fazer meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja na tela de cadastro da plataforma da EBAC-SHOP

            Esquema do Cenário: Cadastro com dados válidos
            Quando eu inserir o <nome>
            E o <sobrenome>
            E o <Pais>
            E o <endereco>
            E a <cidade>
            E o <cep>
            E o <telefone>
            E o <email>
            Então o cadastro deve ser criado com sucesso
            E deve exibir a mensagem "Seja bem-vindo(a) <nome>"

            Exemplos:
            | nome     | sobrenome | Pais     | endereco               | cidade    | cep       | telefone        | email                   |
            | Carinha  | da Silva  | Brasil   | Rua das Flores, 123    | São Paulo | 12345-678 | (11) 98765-4321 | carinha.silva@gmail.com |
            | Link     | Rinku     | Japão    | Rua dos Pinheiros, 456 | Tóquio    | 98765-432 | (81) 91234-5678 | linkezelda@hotmail.com  |
            | Theodoro | Fonseca   | Portugal | Rua do Sol, 789        | Lisboa    | 54321-987 | (21) 99876-5432 | f.theo@gmail.com        |

            Esquema do Cenário: e-mail inválido
            Quando eu preencher o campo de e-mail com <email>
            Então deve aparecer a mensagem "Por favor, insira um endereço de e-mail válido"

            Exemplos:
            | email                   |
            | carinha.silva           |
            | linke@zelda             |
            | f.theo@gmail            |
            |carinho@com              |

            Esquema do Cenário: campos vazios
            Quando eu deixar o <campo> vazio 
            Então deve aparecer a mensagem "O campo <campo> é obrigatório"

            Exemplos:
            | campo     |
            | nome      |
            | sobrenome |
            | Pais      |
            | endereco  |
            | cidade    |
            | cep       |
            | telefone  |
            | email     | 