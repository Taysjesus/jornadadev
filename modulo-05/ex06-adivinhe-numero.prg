
FUNCTION Main()
    LOCAL nSecreto := 0
    LOCAL nPalpite := 0
    LOCAL nI := 0
    LOCAL lAcertou := .F.

    // Sorteia número secreto de 1 a 100
    nSecreto := HB_RandomInt(1, 100)

    ? "========================================="
    ? "  JOGO: ADIVINHE O NUMERO (1 a 100)      "
    ? "  Voce tem 7 tentativas. Boa sorte!      "
    ? "========================================="
    ? ""

    FOR nI := 1 TO 7
        ? "Tentativa " + AllTrim(Str(nI)) + " de 7"
        INPUT "Digite seu palpite: " TO nPalpite

        IF nPalpite == nSecreto
            lAcertou := .T.
            EXIT
        ELSEIF nPalpite < nSecreto
            ? "-> DICA: O numero secreto e MAIOR!"
        ELSE
            ? "-> DICA: O numero secreto e MENOR!"
        ENDIF
        ? ""
    NEXT

    ? ""
    ? "========================================="
    IF lAcertou
        ? " PARABENS! Voce acertou o numero " + AllTrim(Str(nSecreto)) + " em " + AllTrim(Str(nI)) + " tentativa(s)!"
    ELSE
        ? " QUE PENA! Suas 7 tentativas acabaram."
        ? "O numero secreto era: " + AllTrim(Str(nSecreto))
    ENDIF
    ? "========================================="
RETURN NIL