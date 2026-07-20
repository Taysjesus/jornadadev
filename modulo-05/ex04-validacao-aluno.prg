
FUNCTION Main()
    LOCAL cNome := ""
    LOCAL cDisc := ""
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0

    ? "=== CADASTRO DE ALUNO ==="
    ? ""

    // Validar Nome (não pode ser vazio)
    WHILE .T.
        ACCEPT "Nome do aluno: " TO cNome
        cNome := AllTrim(cNome)

        IF Len(cNome) > 0
            EXIT
        ELSE
            ? "Erro: O nome nao pode ser vazio! Tente novamente."
        ENDIF
    ENDDO

    // Validar Disciplina (3 letras maiúsculas)
    WHILE .T.
        ACCEPT "Disciplina (ex: MAT, POR): " TO cDisc
        cDisc := AllTrim(cDisc)

        IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
            EXIT
        ELSE
            ? "Erro: A disciplina deve conter exatamente 3 letras maiusculas!"
        ENDIF
    ENDDO

    // Validar Nota 1 (entre 0 e 10)
    WHILE .T.
        INPUT "Nota 1 (0 a 10): " TO nNota1

        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ELSE
            ? "Erro: A nota deve estar entre 0 e 10!"
        ENDIF
    ENDDO

    // Validar Nota 2 (entre 0 e 10)
    WHILE .T.
        INPUT "Nota 2 (0 a 10): " TO nNota2

        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ELSE
            ? "Erro: A nota deve estar entre 0 e 10!"
        ENDIF
    ENDDO

    // Cálculo da média e exibição
    nMedia := (nNota1 + nNota2) / 2

    ? ""
    ? "================================="
    ? "Aluno: " + cNome
    ? "Disciplina: " + cDisc
    ? "Nota 1: " + AllTrim(Str(nNota1, 5, 2))
    ? "Nota 2: " + AllTrim(Str(nNota2, 5, 2))
    ? "Media Final: " + AllTrim(Str(nMedia, 5, 2))
    ? "================================="
RETURN NIL 