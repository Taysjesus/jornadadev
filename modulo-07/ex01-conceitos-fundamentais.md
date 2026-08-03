### a. Qual é a função do AppServer?
O AppServer é o servidor de aplicação do Protheus responsável por processar as regras de negócio, executar o código ADVPL e gerenciar a comunicação e conexões entre as interfaces do SmartClient e o banco de dados.

### b. O que é o RPO?
O RPO é o arquivo compilado que armazena todas as rotinas, telas, funções e regras de negócio do Protheus. Ele funciona como uma biblioteca central que o AppServer consulta para executar as instruções do sistema.

### c. Para que serve o Configurador (SIGACFG)?
O Configurador é o módulo administrativo do Protheus utilizado para gerenciar a infraestrutura do sistema. Nele são configurados o Dicionário de Dados (tabelas, campos, índices), permissões e cadastros de usuários, parâmetros globais e rotinas de manutenção da base.

### d. Qual a diferença entre campo Real e campo Virtual no SX3?
Um **campo Real** possui uma coluna física correspondente criada no Banco de Dados (SGBD). Já um **campo Virtual** existe apenas na memória e na interface durante a execução do Protheus.