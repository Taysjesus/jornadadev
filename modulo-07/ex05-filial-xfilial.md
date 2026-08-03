### a. Por que existe o campo `A1_FILIAL` e por que toda tabela precisa dele?
O Protheus é um sistema nativamente *multiempresa e multifilial*. O campo `A1_FILIAL` (e os correspondentes em outras tabelas) existe para garantir o **isolamento de dados** por filial. Ele impede que os registros pertencentes a uma unidade de negócio sejam acessados ou alterados por outra unidade não autorizada, garantindo a integridade do sistema.

### b. O que a função `xFilial()` tem a ver com isso e o que acontece se escrever a filial "na mão"?
A função `xFilial("Tabela")` retorna dinamicamente o código da filial correta para a tabela consultada, levando em conta o compartilhamento de tabelas configurado no sistema (ex: se a tabela é Exclusiva ou Compartilhada). 

Se um programa "escrever a filial na mão" (chumbando o valor como `'01'`, por exemplo), o código vai quebrar quando a empresa mudar de filial ou se a tabela for configurada como compartilhada. Isso causaria falha na gravação/leitura de dados e violação do isolamento corporativo entre filiais.