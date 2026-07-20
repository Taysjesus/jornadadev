
FUNCTION Main()
    LOCAL nI := 0

    // a) Números de 1 a 100
    ? "--- a) Imprimindo de 1 a 100 ---"
    FOR nI := 1 TO 100
        ?? Str(nI, 4)
    NEXT
    ? ""

    // b) Números de -50 a 50
    ? "--- b) Imprimindo de -50 a 50 ---"
    FOR nI := -50 TO 50
        ?? Str(nI, 4)
    NEXT
    ? ""

    // c) Números de 80 a 5 (ordem decrescente)
    ? "--- c) Imprimindo de 80 a 5 (decrescente) ---"
    FOR nI := 80 TO 5 STEP -1
        ?? Str(nI, 3)
    NEXT
    ? ""
    
RETURN NIL 