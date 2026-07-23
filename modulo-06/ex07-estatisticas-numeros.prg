// ex07-estatisticas-numeros.prg
FUNCTION Main()
    LOCAL aNumeros := {}
    LOCAL nI := 0, nSoma := 0, nMedia := 0
    LOCAL cInput := ""

    FOR nI := 1 TO 10
        ACCEPT "Digite o " + Str(nI, 2) + "º número: " TO cInput
        AAdd(aNumeros, Val(cInput))
        nSoma += Val(cInput)
    NEXT

    ASort(aNumeros) // Ordena de forma crescente
    nMedia := nSoma / Len(aNumeros)

    QOut("====================================")
    QOut("Números em ordem crescente:")
    FOR nI := 1 TO Len(aNumeros)
        QQOut(Str(aNumeros[nI]) + " ")
    NEXT
    QOut("")
    QOut("Soma: "  + Str(nSoma))
    QOut("Média: " + Str(nMedia))
    QOut("Menor: " + Str(aNumeros[1]))
    QOut("Maior: " + Str(aNumeros[Len(aNumeros)]))

    RETURN NIL