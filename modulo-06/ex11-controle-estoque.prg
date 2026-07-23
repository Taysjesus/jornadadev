// estoque_lib.prg
FUNCTION Menu()
    LOCAL cOp := ""
    CLS
    QOut("=== CONTROLE DE ESTOQUE ===")
    QOut("1. Cadastrar produto")
    QOut("2. Listar produtos")
    QOut("3. Entrada de estoque")
    QOut("4. Saída de estoque")
    QOut("5. Buscar produto por código")
    QOut("6. Relatório de valor em estoque")
    QOut("0. Sair")
    ACCEPT "Opção: " TO cOp
    RETURN Val(cOp)

FUNCTION BuscarProduto(aEstoque, nCodigo)
    LOCAL nI := 0
    FOR nI := 1 TO Len(aEstoque)
        IF aEstoque[nI][1] == nCodigo
            RETURN nI
        ENDIF
    NEXT
    RETURN 0

PROCEDURE CadastrarProduto(aEstoque)
    LOCAL cCod := "", cNome := "", cQtd := "", cPreco := ""
    LOCAL nCod := 0, nPos := 0

    ACCEPT "Código: " TO cCod
    nCod := Val(cCod)
    
    nPos := BuscarProduto(aEstoque, nCod)
    IF nPos > 0
        QOut("Erro: Produto já cadastrado!")
        Inkey(2)
        RETURN
    ENDIF

    ACCEPT "Nome: " TO cNome
    ACCEPT "Quantidade: " TO cQtd
    ACCEPT "Preço Unitário: " TO cPreco

    AAdd(aEstoque, {nCod, AllTrim(cNome), Val(cQtd), Val(cPreco)})
    QOut("Produto cadastrado com sucesso!")
    Inkey(1)
    RETURN

PROCEDURE ListarProdutos(aEstoque)
    LOCAL nI := 0
    CLS
    QOut("=== LISTA DE PRODUTOS ===")
    FOR nI := 1 TO Len(aEstoque)
        QOut("Cód: " + Str(aEstoque[nI][1], 4) + ;
             " | Nome: " + PadR(aEstoque[nI][2], 15) + ;
             " | Qtd: " + Str(aEstoque[nI][3], 5) + ;
             " | R$: " + Transform(aEstoque[nI][4], "@N 999.99"))
    NEXT
    ACCEPT "Pressione ENTER para voltar..." TO cI
    RETURN

PROCEDURE EntradaEstoque(aEstoque)
    LOCAL cCod := "", cQtd := ""
    LOCAL nPos := 0, nQtd := 0

    ACCEPT "Código do produto: " TO cCod
    nPos := BuscarProduto(aEstoque, Val(cCod))

    IF nPos == 0
        QOut("Produto não encontrado!")
    ELSE
        ACCEPT "Quantidade de entrada: " TO cQtd
        nQtd := Val(cQtd)
        IF nQtd > 0
            aEstoque[nPos][3] += nQtd
            QOut("Estoque atualizado!")
        ENDIF
    ENDIF
    Inkey(2)
    RETURN

PROCEDURE SaidaEstoque(aEstoque)
    LOCAL cCod := "", cQtd := ""
    LOCAL nPos := 0, nQtd := 0

    ACCEPT "Código do produto: " TO cCod
    nPos := BuscarProduto(aEstoque, Val(cCod))

    IF nPos == 0
        QOut("Produto não encontrado!")
    ELSE
        ACCEPT "Quantidade de saída: " TO cQtd
        nQtd := Val(cQtd)
        IF nQtd > aEstoque[nPos][3]
            QOut("Erro: Estoque insuficiente!")
        ELSE
            aEstoque[nPos][3] -= nQtd
            QOut("Saída registrada!")
        ENDIF
    ENDIF
    Inkey(2)
    RETURN

PROCEDURE RelatorioEstoque(aEstoque)
    LOCAL nI := 0, nSubTotal := 0, nTotalGeral := 0
    CLS
    QOut("=== RELATÓRIO VALOR EM ESTOQUE ===")
    FOR nI := 1 TO Len(aEstoque)
        nSubTotal := aEstoque[nI][3] * aEstoque[nI][4]
        nTotalGeral += nSubTotal
        QOut("Item: " + PadR(aEstoque[nI][2], 15) + ;
             " | Total Item: R$ " + Transform(nSubTotal, "@N 999,999.99"))
    NEXT
    QOut("-----------------------------------------")
    QOut("TOTAL GERAL EM ESTOQUE: R$ " + Transform(nTotalGeral, "@N 999,999.99"))
    ACCEPT "Pressione ENTER para voltar..." TO cI
    RETURN NIL 