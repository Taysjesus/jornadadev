FUNCTION Main()

    local cTextoLongo := "Harbour"
    local CTextoCurto := "Harb"

    ? "========================================"
    ? "      DEMONSTRACAO: = vs =="
    ? "========================================"
    ? "Texto 1: '" + cTextoLongo + "'"
    ? "Texto 2: '" + cTextoCurto + "'"
    ? "----------------------------------------"

    // Testando com o operador de igualdade simples (=)
    
    ? "Comparando com '=' (cTextoLongo = cTextoCurto):"
    IF cTextoLongo = cTextoCurto
        ? "Resultado: SÇO IGUAIS (.T.)"
    ELSE
        ? "Resultado: SÇO DIFERENTES (.F.)"
    ENDIF

    ? "----------------------------------------"

    // Testando com o operador de igualdade exata (==)
    
    ? "Comparando com '==' (cTextoLongo == cTextoCurto):"
    IF cTextoLongo == cTextoCurto
        ? "Resultado: SÇO IGUAIS (.T.)"
    ELSE
        ? "Resultado: SÇO DIFERENTES (.F.)"
    ENDIF
    ? "========================================"

    RETURN NIL