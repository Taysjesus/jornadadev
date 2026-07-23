// ex10-bubble-sort.prg
FUNCTION Main()
    LOCAL aValores := {45, 12, 89, 3, 27, 64, 1, 90, 33, 18}
    LOCAL nI := 0

    QOut("Vetor Original:")
    ExibirVetor(aValores)

    BubbleSort(@aValores)

    QOut("Vetor Ordenado (Bubble Sort):")
    ExibirVetor(aValores)

    RETURN NIL

FUNCTION BubbleSort(aV)
    LOCAL nN := Len(aV)
    LOCAL nI := 0, nJ := 0, nTemp := 0

    FOR nI := 1 TO nN - 1
        FOR nJ := 1 TO nN - nI
            IF aV[nJ] > aV[nJ + 1]
                // Troca de elementos vizinhos
                nTemp := aV[nJ]
                aV[nJ] := aV[nJ + 1]
                aV[nJ + 1] := nTemp
            ENDIF
        NEXT
    NEXT
    RETURN NIL

PROCEDURE ExibirVetor(aV)
    LOCAL nI := 0
    FOR nI := 1 TO Len(aV)
        QQOut(Str(aV[nI]) + " ")
    NEXT
    QOut("")
    RETURN