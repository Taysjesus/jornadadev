FUNCTION Main()

    LOCAL nA   := 10
    LOCAL nB   := 0
    LOCAL nRes
    LOCAL oErro

    QOut("Iniciando o programa...")

    BEGIN SEQUENCE

        // Erro provocado propositalmente
        nRes := nA / nB

        QOut("Resultado: " + Str(nRes))

    RECOVER WITH oErro

        QOut("Erro capturado: " + oErro:Description)

    END SEQUENCE

    QOut("O programa continua de pe!")

RETURN NIL