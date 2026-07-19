
FUNCTION Main()
    LOCAL nA := 0
    LOCAL nB := 0
    LOCAL cOperacao := ""
    LOCAL cInput := ""

    ACCEPT "Digite o primeiro numero (nA): " TO cInput
    nA := Val(cInput)

    ACCEPT "Escolha a operacao (+, -, *, /, ^, R): " TO cOperacao
    cOperacao := Upper(cOperacao)

    IF cOperacao != "R"
        ACCEPT "Digite o segundo numero (nB): " TO cInput
        nB := Val(cInput)
    ENDIF

    DO CASE
        CASE cOperacao == "+"
            ? "Resultado: " + AllTrim(Str(nA + nB))
        CASE cOperacao == "-"
            ? "Resultado: " + AllTrim(Str(nA - nB))
        CASE cOperacao == "*"
            ? "Resultado: " + AllTrim(Str(nA * nB))
        CASE cOperacao == "/"
            IF nB == 0
                ? "Erro: Divisao por zero nao permitida!"
            ELSE
                ? "Resultado: " + AllTrim(Str(nA / nB, 10, 2))
            ENDIF
        CASE cOperacao == "^"
            ? "Resultado: " + AllTrim(Str(nA ^ nB))
        CASE cOperacao == "R"
            IF nA < 0
                ? "Erro: Nao existe raiz quadrada de numero negativo nos reais!"
            ELSE
                ? "Resultado da Raiz Quadrada: " + AllTrim(Str(Sqrt(nA), 10, 2))
            ENDIF
        OTHERWISE
            ? "Operacao invalida!"
    ENDCASE
RETURN NIL