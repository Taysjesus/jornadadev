
FUNCTION Main()
    LOCAL nI := 0
    LOCAL cHoraAtual := ""

   
    FOR nI := 1 TO 30
        cHoraAtual := ObterHora()
        ExibirHora(FormatarHora(cHoraAtual))
        Inkey(1) 
    NEXT

    RETURN NIL

FUNCTION ObterHora()
    RETURN Time()

FUNCTION FormatarHora(cHora)
    RETURN "Hora atual: " + cHora

PROCEDURE ExibirHora(cHoraFormatada)
    CLS
    QOut("============================")
    QOut("      RELÓGIO DIGITAL       ")
    QOut("============================")
    QOut(cHoraFormatada)
    RETURN