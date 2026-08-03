1. **Acesso ao Dicionário:** Acessar o `SIGACFG` (*Base de Dados > Dicionário > Base de Dados*).
2. **Localização da Tabela:** Pesquisar pela tabela **SA1** (Cadastro de Clientes) e editar a sua estrutura de campos.
3. **Inclusão do Campo Customizado:**
   * **Nome do Campo:** `A1_XAPELID` (a letra 'X' após o prefixo indica customização de campo em tabela padrão).
   * **Tipo:** Caractere.
   * **Tamanho:** 20.
   * **Título / Contexto:** Apelido / Real.
   * **Pasta / Nível:** Definir a pasta na interface onde o campo será exibido e nível de acesso.
4. **Gravação e Atualização:** Confirmar e salvar a alteração no Dicionário de Dados.
5. **Validação na Interface:** Fechar o Configurador, abrir o módulo Faturamento (`SIGAFAT` ou `SIGACOM`), acessar a rotina de **Cadastro de Clientes (MATA030)** e visualizar o novo campo "Apelido" na tela do formulário, tudo de forma nativa e sem necessidade de código.