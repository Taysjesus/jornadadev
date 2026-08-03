# Exercício 1 – Dicionário de Dados

## Tabela SZ1 – Cadastro de Contatos

Foi criada a tabela **SZ1** em modo **Compartilhado**, contendo os seguintes campos:

- Z1_FILIAL
- Z1_CODIGO
- Z1_CLIENTE
- Z1_ASSUNTO

Também foi criado o índice:

- Ordem 1: `Z1_FILIAL + Z1_CODIGO`

---

## Tabela SZ2 – Cadastro de Interações

Foi criada a tabela **SZ2** em modo **Compartilhado**, contendo os seguintes campos:

- Z2_FILIAL
- Z2_CONTAT
- Z2_SEQUEN
- Z2_DATA
- Z2_HORA
- Z2_USUAR
- Z2_TIPO
- Z2_TEXTO

Também foi criado o índice:

- Ordem 1: `Z2_FILIAL + Z2_CONTAT + Z2_SEQUEN`

---

## Observação

As tabelas, campos e índices foram configurados no dicionário de dados do Protheus conforme o projeto.

O domínio **SX5 (código Z2)** não foi implementado nesta etapa.