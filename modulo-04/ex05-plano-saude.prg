FUNCTION Main()
    LOCAL nIdade := 0
    LOCAL nDependentes := 0
    LOCAL nValorBase := 0
    LOCAL nValorTotal := 0
    LOCAL cInputIdade := ""
    LOCAL cInputDep := ""

    ACCEPT "Digite a idade do titular: " TO cInputIdade
    ACCEPT "Digite a quantidade de dependentes: " TO cInputDep

    nIdade := Val(cInputIdade)
    nDependentes := Val(cInputDep)

    // Define o valor base conforme a faixa etaria
    IF nIdade <= 25
        nValorBase := 180
    ELSEIF nIdade <= 40
        nValorBase := 260
    ELSEIF nIdade <= 60
        nValorBase := 380
    ELSE
        nValorBase := 520
    ENDIF

    // Soma o valor da faixa etaria + R$ 90 x n° de dependentes
    nValorTotal := nValorBase + (nDependentes * 90)

    ? "Valor mensal base: R$ " + AllTrim(Str(nValorBase))
    ? "Adicional dependentes (" + AllTrim(Str(nDependentes)) + "): R$ " + AllTrim(Str(nDependentes * 90))
    ? "----------------------------------------"
    ? "Valor MENSAL TOTAL do plano: R$ " + Transform(nValorTotal, "@E 999,999.92")
RETURN NIL