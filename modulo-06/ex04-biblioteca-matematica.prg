// matematica.prg
FUNCTION FatorialN(nN)
    LOCAL nFat := 1, nI := 0
    FOR nI := 1 TO nN
        nFat := nFat * nI
    NEXT
    RETURN nFat

FUNCTION EhPrimo(nN)
    LOCAL nI := 0, nDivisores := 0
    IF nN <= 1
        RETURN .F.
    ENDIF
    FOR nI := 1 TO nN
        IF nN % nI == 0
            nDivisores++
        ENDIF
    NEXT
    RETURN (nDivisores == 2)

FUNCTION MDC(nA, nB)
    LOCAL nTemp := 0
    DO WHILE nB != 0
        nTemp := nB
        nB := nA % nB
        nA := nTemp
    ENDDO
    RETURN nA

FUNCTION MMC(nA, nB)
    IF nA == 0 .OR. nB == 0
        RETURN 0
    ENDIF
    RETURN (nA * nB) / MDC(nA, nB)