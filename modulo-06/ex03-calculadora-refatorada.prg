
FUNCTION Main()
    LOCAL nN1 := 0, nN2 := 0, nResultado := 0
    LOCAL cOp := ""
    LOCAL lSucesso := .T.

    nN1 := LerNumero("Digite o primeiro número: ")
    
    ACCEPT "Digite a operação (+, -, *, /): " TO cOp
    
    nN2 := LerNumero("Digite o segundo número: ")

    lSucesso := Calcular(nN1, nN2, cOp, @nResultado)

    IF lSucesso
        MostrarResultado(nResultado)
    ELSE
        QOut("Erro: Divisão por zero não é permitida!")
    ENDIF

    RETURN NIL

FUNCTION LerNumero(cMensagem)
    LOCAL cInput := ""
    ACCEPT cMensagem TO cInput
    RETURN Val(cInput)

FUNCTION Calcular(nA, nB, cOp, nResultado)
    DO CASE
        CASE cOp == "+"
            nResultado := nA + nB
        CASE cOp == "-"
            nResultado := nA - nB
        CASE cOp == "*"
            nResultado := nA * nB
        CASE cOp == "/"
            IF nB == 0
                RETURN .F.
            ENDIF
            nResultado := nA / nB
        OTHERWISE
            nResultado := 0
    ENDCASE
    RETURN .T.

PROCEDURE MostrarResultado(nValor)
    QOut("Resultado: " + Transform(nValor, "@N 999,999.99"))
    RETURN