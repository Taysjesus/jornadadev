// ex05-jokenpo-modular.prg
FUNCTION Main()
    LOCAL cOpcao := "", cJogadaUser := "", cJogadaCPU := "", cResultado := ""

    DO WHILE .T.
        CLS
        QOut("=== JOKENPO ===")
        ACCEPT "Escolha [P]edra, [A]ppel (Papel), [T]esoura ou [S]air: " TO cOpcao
        cOpcao := Upper(AllTrim(cOpcao))

        IF cOpcao == "S"
            EXIT
        ENDIF

        IF .NOT. ValidarJogada(cOpcao)
            QOut("Jogada inválida! Tente novamente.")
            Inkey(2)
            LOOP
        ENDIF

        cJogadaUser := cOpcao
        cJogadaCPU  := SortearJogadaCPU()

        QOut("Você jogou: " + NomeJogada(cJogadaUser))
        QOut("CPU jogou:  " + NomeJogada(cJogadaCPU))

        cResultado := DefinirVencedor(cJogadaUser, cJogadaCPU)
        QOut("Resultado: " + cResultado)
        
        ACCEPT "Pressione ENTER para continuar..." TO cOpcao
    ENDDO

    RETURN NIL

FUNCTION ValidarJogada(cJogada)
    RETURN (cJogada $ "P|A|T")

FUNCTION SortearJogadaCPU()
    LOCAL nRnd := Hb_RandomInt(1, 3)
    DO CASE
        CASE nRnd == 1 ; RETURN "P"
        CASE nRnd == 2 ; RETURN "A"
        CASE nRnd == 3 ; RETURN "T"
    ENDCASE
    RETURN "P"

FUNCTION DefinirVencedor(cJ1, cJ2)
    IF cJ1 == cJ2
        RETURN "Empate!"
    ENDIF

    IF (cJ1 == "P" .AND. cJ2 == "T") .OR. ;
       (cJ1 == "A" .AND. cJ2 == "P") .OR. ;
       (cJ1 == "T" .AND. cJ2 == "A")
        RETURN "Você venceu!"
    ENDIF

    RETURN "CPU venceu!"

FUNCTION NomeJogada(cSigla)
    DO CASE
        CASE cSigla == "P" ; RETURN "Pedra"
        CASE cSigla == "A" ; RETURN "Papel"
        CASE cSigla == "T" ; RETURN "Tesoura"
    ENDCASE
    RETURN ""