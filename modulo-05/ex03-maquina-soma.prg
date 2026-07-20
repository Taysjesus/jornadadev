
FUNCTION Main()
    LOCAL nVal := 0
    LOCAL nTotal := 0
    LOCAL nQtd := 0

    ? "=== MAQUINA DE SOMA ==="
    ? "Digite valores para somar. Digite 0 para encerrar."
    ? ""

    WHILE .T.
        INPUT "Digite um valor: " TO nVal

        IF nVal == 0
            EXIT
        ENDIF

        nTotal += nVal
        nQtd++
    ENDDO

    ? "---------------------------------"
    ? "Soma total dos valores: " + AllTrim(Str(nTotal))
    ? "Quantidade de valores somados: " + AllTrim(Str(nQtd))
    ? "---------------------------------"
RETURN NIL 