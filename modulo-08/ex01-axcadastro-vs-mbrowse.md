

## a. Quando usaria AxCadastro e quando usaria mBrowse? Dê um exemplo de cada.

* **AxCadastro:** Usaria quando preciso criar uma manutenção de tabela simples e padrão (Inclusão, Alteração, Visualização, Exclusão) de forma rápida e com pouco ou nenhum código customizado.
  * *Exemplo:* Um cadastro simples de Países ou Tabelas de Apoio/Parâmetros do sistema.
* **mBrowse:** Usaria quando preciso de maior flexibilidade, controle total sobre quais funções executarei em cada botão da `aRotina`, regras de validação complexas na abertura do painel, filtros dinâmicos na tela, legendas coloridas ou botões customizados.
  * *Exemplo:* Um cadastro central de Pedidos de Venda ou Clientes, com botões para imprimir relatórios, regras de aprovação e legendas coloridas indicando status do registro.

---

## b. Cite três coisas que o mBrowse faz e o AxCadastro não faz.

1. **Aplicação de Legendas Coloridas (`aColors`):** O `mBrowse` permite aplicar estilos e cores nas linhas/ícones com base em expressões condicionais.
2. **Definição de Filtros Iniciais e Avançados (`cFiltro`):** Permite abrir a tela já filtrando os registros da tabela com base em regras específicas em tempo de execução.
3. **Personalização Total da Barra de Ferramentas (`aRotina`):** Permite customizar integralmente quais opções de menu e funções do usuário estarão disponíveis no navegador de dados.

---

## c. Na configuração de legendas (`aColors`), por que a regra `".T."` deve ficar por último?

A validação da matriz `aColors` funciona de forma sequencial (de cima para baixo). O sistema avalia cada condição e aplica a cor da **primeira** condição que retornar verdadeira (`.T.`).

Como a expressão `".T."` é uma condição sempre verdadeira, se ela for inserida no início ou no meio, o Protheus aplicará a regra para todos os registros seguintes e nunca avaliará as demais condições que estão abaixo dela. Portanto, ela atua como um *fallback* (padrão) para capturar "os demais registros" e deve ficar obrigatoriamente por último.

---

## d. Qual a diferença entre um campo Virtual (`X3_RELACAO`) e um gatilho (`SX7`) para preencher o nome do cliente?

* **Campo Virtual (`X3_RELACAO`):** Não grava a informação no banco de dados (tabela). Toda vez que a tela/registro é carregado ou desenhado, o Protheus executa a fórmula do `X3_RELACAO` em tempo de leitura/exibição.
* **Gatilho (`SX7`):** É um evento disparado pela ação do usuário (ao alterar ou sair do campo de origem com `Tab`/`Enter`). Ele busca o dado em outra tabela e **grava fisicamente** essa informação no campo de destino no banco de dados no momento em que o registro é salvo.