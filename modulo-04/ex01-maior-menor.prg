FUNCTION Main()
    LOCAL nVal1 := 0
    LOCAL nVal2 := 0
    LOCAL cInput1 := ""
    LOCAL cInput2 := ""

    ACCEPT "Digite o primeiro numero: " TO cInput1
    ACCEPT "Digite o segundo numero: " TO cInput2

    nVal1 := Val(cInput1)
    nVal2 := Val(cInput2)

    // Trata primeiro o caso "iguais"
    IF nVal1 == nVal2
        ? "Os dois numeros sao iguais."
    ELSE
        // No ELSE, decide quem é o maior
        IF nVal1 > nVal2
            ? "Maior: " + AllTrim(Str(nVal1))
            ? "Menor: " + AllTrim(Str(nVal2))
        ELSE
            ? "Maior: " + AllTrim(Str(nVal2))
            ? "Menor: " + AllTrim(Str(nVal1))
        ENDIF
    ENDIF
RETURN NIL 