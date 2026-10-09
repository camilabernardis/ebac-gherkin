<div align="center">

# 🧪 EBAC Gherkin

**Cenários de teste em BDD para a loja virtual EBAC-SHOP.**

Atividade do curso de **Engenheiro de Qualidade de Software** da EBAC.

<br />

![Gherkin](https://img.shields.io/badge/Gherkin-BDD-23DB7F?style=for-the-badge&logo=cucumber&logoColor=white)
![QA](https://img.shields.io/badge/QA-Qualidade_de_Software-6c5ce7?style=for-the-badge)
![Idioma](https://img.shields.io/badge/Idioma-Portugu%C3%AAs-009c3b?style=for-the-badge)

</div>

---

## 📖 Sobre o projeto

Este repositório reúne os cenários de teste que escrevi em **Gherkin** (a linguagem do **BDD**, *Behavior Driven Development*) para as principais funcionalidades de uma loja virtual fictícia, a **EBAC-SHOP**.

Cada funcionalidade é descrita do ponto de vista do cliente, com uma história de usuário (*Como... Quero... Para...*) e cenários que cobrem tanto o **caminho feliz** quanto os **casos de erro**. Assim, qualquer pessoa do time, técnica ou não, consegue ler e entender o que precisa ser testado.

## 🗂️ Funcionalidades cobertas

| Arquivo | Funcionalidade | O que é testado |
|---|---|---|
| `login_na_plataforma.feature` | 🔐 Login na plataforma | Autenticação com dados válidos e inválidos |
| `Configurar_produto.feature` | 🛍️ Escolha de produto | Cor, tamanho e quantidade, limite máximo, campos obrigatórios e limpeza do carrinho |
| `checkout.feature` | 💳 Checkout | Cadastro do cliente, validação de e-mail e campos obrigatórios |

## 🧩 Cenários em detalhe

### 🔐 Login na plataforma
- ✅ Login com usuário e senha válidos, direcionando o cliente para a tela de checkout
- ❌ Login com dados inválidos, exibindo a mensagem *"Usuário ou senha inválidos"*

### 🛍️ Escolha de produto
- ✅ Produto válido com diferentes combinações de cor, tamanho e quantidade
- ❌ Quantidade acima do limite (máximo de 10 unidades por item)
- ❌ Cor, tamanho ou quantidade sem preencher
- 🧹 Limpar o carrinho

### 💳 Checkout
- ✅ Cadastro com dados válidos de clientes de diferentes países
- ❌ Validação de e-mails em formato inválido
- ❌ Validação de cada campo obrigatório vazio (nome, sobrenome, país, endereço, cidade, CEP, telefone e e-mail)

No total, são **3 funcionalidades**, **9 cenários** e **26 combinações de dados** de teste.

## 🔍 Exemplo

Um trecho do arquivo de login, para ver como a leitura fica natural:

```gherkin
#language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que eu acesse a página de autenticação da EBAC-SHOP

  Cenário: Dados inválidos
    Quando eu inserir o "link20"
    E a "zelda"
    Então deve aparecer a mensagem "Usuário ou senha inválidos"
```

## 🛠️ Conceitos aplicados

- **Gherkin em português** (`#language: pt`)
- **Funcionalidade** com história de usuário
- **Contexto** para reaproveitar o passo inicial em todos os cenários
- **Esquema do Cenário com Exemplos**, rodando o mesmo teste com vários conjuntos de dados
- **Cenários positivos e negativos**, cobrindo o que funciona e o que deve dar erro
- **Mensagens de erro** definidas como critério de aceitação

## 📂 Estrutura do projeto

```
ebac-gherkin/
├── login_na_plataforma.feature   # Login
├── Configurar_produto.feature    # Escolha e configuração do produto
├── checkout.feature              # Cadastro e finalização da compra
└── README.md
```

## 💡 Aprendizados

- Escrever requisitos de forma clara, que todo o time entende
- Pensar além do caminho feliz: o que acontece quando o cliente erra?
- Usar tabelas de exemplos para testar várias situações sem repetir cenários
- Definir mensagens de erro como parte do comportamento esperado
- Ver o QA como parte do processo desde o início, não só no final

## 🙏 Agradecimentos

À **EBAC** pelo curso de Engenheiro de Qualidade de Software.

## 👩‍💻 Autora

**Camila Bernardi**

[![GitHub](https://img.shields.io/badge/GitHub-camilabernardis-181717?style=flat-square&logo=github)](https://github.com/camilabernardis)

---

<div align="center">

Feito com 💚 e muita atenção aos detalhes, porque é assim que se pega bug. 🐛

⭐ Se gostou do projeto, deixa uma estrelinha!

</div>
