
FUNCTION Main()
    LOCAL nNum := 0

    WHILE .T.
        INPUT "Digite um numero inteiro (0 ou negativo para sair): " TO nNum

        // Condição de parada
        IF nNum <= 0
            EXIT
        ENDIF

        ? "O dobro de " + AllTrim(Str(nNum)) + " e: " + AllTrim(Str(nNum * 2))
        ? ""
    ENDDO

    ? "Programa encerrado."
RETURN NIL