// ex06-dias-da-semana.prg
FUNCTION Main()
    LOCAL aDias := {"Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado"}
    LOCAL cInput := ""
    LOCAL nNum := 0

    ACCEPT "Digite um número de 1 a 7: " TO cInput
    nNum := Val(cInput)

    IF nNum >= 1 .AND. nNum <= 7
        QOut("O dia correspondente é: " + aDias[nNum])
    ELSE
        QOut("Erro: Número inválido! Por favor, informe um valor entre 1 e 7.")
    ENDIF

    RETURN NIL