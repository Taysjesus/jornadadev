FUNCTION Main()
    
    local nNota1 := 0
    local nNota2 := 0
    local nNota3 := 0 
    local nNota4 := 0
    LOCAL nMediaPonderada := 0

   
    ? "========================================"
    ? PadC("CALCULO DE MEDIA PONDERADA", 40)
    ? "========================================"
    ? ""

    
    ACCEPT "Digite a nota do 1o Bimestre (Peso 1): " TO nNota1
    nNota1 := Val(nNota1)

    ACCEPT "Digite a nota do 2o Bimestre (Peso 2): " TO nNota2
    nNota2 := Val(nNota2)

    ACCEPT "Digite a nota do 3o Bimestre (Peso 3): " TO nNota3
    nNota3 := Val(nNota3)

    ACCEPT "Digite a nota do 4o Bimestre (Peso 4): " TO nNota4
    nNota4 := Val(nNota4)


    // Multiplicamos cada nota pelo seu respectivo peso e dividimos pela soma dos pesos (10)
    
    nMediaPonderada := ((nNota1 * 1) + (nNota2 * 2) + (nNota3 * 3) + (nNota4 * 4)) / 10

    
    ? ""
    ? "----------------------------------------"
    ? "            RESULTADO FINAL             "
    ? "----------------------------------------"
    ? "Nota 1:           ", Str(nNota1, 5, 2)
    ? "Nota 2:           ", Str(nNota2, 5, 2)
    ? "Nota 3:           ", Str(nNota3, 5, 2)
    ? "Nota 4:           ", Str(nNota4, 5, 2)
    ? "----------------------------------------"
    ? "Media Ponderada:  ", Str(nMediaPonderada, 5, 2)
    ? "----------------------------------------"

    RETURN NIL