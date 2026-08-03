1. **Acesso ao Configurador:** Abrir o SmartClient, acessar o módulo `SIGACFG` e navegar em *Base de Dados > Dicionário > Base de Dados*.
2. **Criação no SX2 / SX3:** 
   * Na árvore de tabelas, incluir a nova tabela **ZA1** (Descrição: Cadastro de Pets).
   * Adicionar os campos na estrutura: `ZA1_FILIAL` (Caractere, 2), `ZA1_COD` (Caractere, 6), `ZA1_NOME` (Caractere, 20), `ZA1_RACA` (Caractere, 20) e `ZA1_DTNASC` (Data, 8).
   * Ajustar propriedades visuais (Título, Descrição e se o campo é obrigatório/usado).
3. **Criação do Índice:** Incluir a chave de ordenação `ZA1_FILIAL + ZA1_COD` na aba de Índices.
4. **Atualização da Base de Dados:** Confirmar as alterações no Configurador para aplicar o *update* no dicionário de dados local e criar a tabela física no banco.
5. **Reconhecimento pelo Framework:** Acessar a rotina de Fórmulas no módulo para forçar a atualização dos buffers e a leitura da nova tabela na memória do AppServer.
6. **Validação no MPSDU:** Abrir o utilitário **MPSDU**, localizar a tabela `ZA1` e verificar se a estrutura física de colunas e índices foi criada corretamente no banco.