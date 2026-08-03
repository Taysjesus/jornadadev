### a. Estrutura dos campos da ZA1:
* **`ZA1_FILIAL`**: Tipo Caractere, Tamanho 2 (Campo obrigatório de controle de filial).
* **`ZA1_COD`**: Tipo Caractere, Tamanho 6 (ID do Pet).
* **`ZA1_NOME`**: Tipo Caractere, Tamanho 20 (Nome do Pet).
* **`ZA1_RACA`**: Tipo Caractere, Tamanho 20 (Raça do Pet).
* **`ZA1_DTNASC`**: Tipo Data, Tamanho 8 (Idade do Pet).

### b. Índice sugerido e justificativa:
Faria sentido criar um índice primário com a chave **`ZA1_FILIAL + ZA1_COD`**.  
*Justificativa:* O índice funciona como um índice remissivo ou catálogo de biblioteca: ele ordena os registros no banco para permitir buscas instantâneas. 

### c. Prefixo da tabela (Z):
No Protheus, a letra **Z** é uma convenção padrão reservada exclusivamente para objetos customizados (tabelas desenvolvidas especificamente para o cliente/projeto). Isso evita que atualizações padrão da TOTVS sobrescrevam ou entrem em conflito com as tabelas criadas sob medida.

### d. Prefixo dos campos (`ZA1_`):
O prefixo `ZA1_` nos campos garante a unicidade dos nomes e identifica imediatamente a qual tabela o campo pertence dentro do Dicionário de Dados do Protheus. Essa padronização previne conflitos de variáveis em memória e no banco durante a execução das rotinas.
