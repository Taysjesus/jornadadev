FUNCTION Main()
    LOCAL nMes := 0
    LOCAL cInput := ""
    LOCAL aMeses := {"Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", ;
                     "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}

    ACCEPT "Digite o numero do mes (1 a 12): " TO cInput
    nMes := Val(cInput)

    // Valida se o numero esta no intervalo
    IF nMes >= 1 .AND. nMes <= 12
        ? "Mes correspondente: " + aMeses[nMes]
    ELSE
        ? "Mes invalido"
    ENDIF
RETURN NIL