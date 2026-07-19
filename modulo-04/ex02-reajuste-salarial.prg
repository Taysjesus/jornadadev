FUNCTION Main()
    LOCAL nSalarioAtual := 0
    LOCAL nNovoSalario := 0
    LOCAL cInput := ""

    ACCEPT "Digite o salario atual: R$ " TO cInput
    nSalarioAtual := Val(cInput)

    // Estrutura IF/ELSEIF/ELSE para faixas de valor
    IF nSalarioAtual < 1000
        nNovoSalario := nSalarioAtual * 1.15 // 15%
    ELSEIF nSalarioAtual <= 2000
        nNovoSalario := nSalarioAtual * 1.12 // 12%
    ELSEIF nSalarioAtual <= 4000
        nNovoSalario := nSalarioAtual * 1.08 // 8%
    ELSE
        nNovoSalario := nSalarioAtual * 1.05 // 5%
    ENDIF

    ? "Novo salario apos o reajuste: R$ " + Transform(nNovoSalario, "@E 999,999.92")
RETURN NIL 