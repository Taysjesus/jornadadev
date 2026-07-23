// ex09-carrinho-compras.prg
FUNCTION Main()
    LOCAL aCarrinho := {}
    LOCAL cNome := "", cPreco := "", cOpcao := ""
    LOCAL nTotal := 0, nI := 0

    DO WHILE .T.
        ACCEPT "Nome do produto (ou Enter para fechar): " TO cNome
        IF Empty(AllTrim(cNome))
            EXIT
        ENDIF

        ACCEPT "Preço do produto: " TO cPreco
        AAdd(aCarrinho, {cNome, Val(cPreco)})
    ENDDO

    CLS
    QOut("=== COMPROVANTE DO CARRINHO ===")
    FOR nI := 1 TO Len(aCarrinho)
        QOut(aCarrinho[nI][1] + " - R$ " + Transform(aCarrinho[nI][2], "@N 999,999.99"))
        nTotal += aCarrinho[nI][2]
    NEXT
    QOut("-------------------------------")
    QOut("TOTAL D'A COMPRA: R$ " + Transform(nTotal, "@N 999,999.99"))

    RETURN NIL