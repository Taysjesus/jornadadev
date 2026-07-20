
 FUNCTION Main()
    LOCAL cNome := ""
    LOCAL cDisc := ""
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nMedia := 0
    LOCAL cOpcao := ""

    // Loop principal do programa
    WHILE .T.
        ? "=== CADASTRO DE ALUNO ==="
        ? ""

        // Validar Nome
        WHILE .T.
            ACCEPT "Nome do aluno: " TO cNome
            cNome := AllTrim(cNome)

            IF Len(cNome) > 0
                EXIT
            ELSE
                ? "Erro: O nome nao pode ser vazio!"
            ENDIF
        ENDDO

        // Validar Disciplina
        WHILE .T.
            ACCEPT "Disciplina (ex: MAT, POR): " TO cDisc
            cDisc := AllTrim(cDisc)

            IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
                EXIT
            ELSE
                ? "Erro: A disciplina deve ter 3 letras maiusculas!"
            ENDIF
        ENDDO

        // Validar Nota 1
        WHILE .T.
            INPUT "Nota 1 (0 a 10): " TO nNota1

            IF nNota1 >= 0 .AND. nNota1 <= 10
                EXIT
            ELSE
                ? "Erro: A nota deve estar entre 0 e 10!"
            ENDIF
        ENDDO

        // Validar Nota 2
        WHILE .T.
            INPUT "Nota 2 (0 a 10): " TO nNota2

            IF nNota2 >= 0 .AND. nNota2 <= 10
                EXIT
            ELSE
                ? "Erro: A nota deve estar entre 0 e 10!"
            ENDIF
        ENDDO

        nMedia := (nNota1 + nNota2) / 2

        ? ""
        ? "================================="
        ? "Aluno: " + cNome
        ? "Disciplina: " + cDisc
        ? "Media Final: " + AllTrim(Str(nMedia, 5, 2))
        ? "================================="
        ? ""

        // Pergunta de continuidade
        ACCEPT "Deseja calcular outro? (S/N): " TO cOpcao
        cOpcao := Upper(AllTrim(cOpcao))

        IF cOpcao != "S"
            EXIT
        ENDIF

        ? ""
    ENDDO

    ? "Programa encerrado. ATE LOGO!"
RETURN NIL 