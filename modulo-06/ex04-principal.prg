// principal.prg
SET PROCEDURE TO matematica.prg

FUNCTION Main()
    QOut("Fatorial de 5: " + Str(FatorialN(5)))
    QOut("7 é primo? " + IIF(EhPrimo(7), "Sim", "Não"))
    QOut("MMC entre 12 e 18: " + Str(MMC(12, 18)))
    QOut("MDC entre 12 e 18: " + Str(MDC(12, 18)))
    RETURN NIL