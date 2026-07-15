FUNCTION Main()
    LOCAL cNome    := "Tais"
    LOCAL cCidade  := "São Paulo"
    LOCAL cCurso   := "Harbour/ADVPL"
    LOCAL cData    := DToC(Date())
    LOCAL cHora    := Time()

    SET DATE FORMAT TO "DD/MM/YYYY"
    cData := DToc(Date())

    hb_cdpSelect("PT850")

    ?" ==============================="
    ?"    FICHA DE APRESENTAÇÃO       "
    ?" ==============================="
    ?" Nome:  " + cNome 
    ?" Cidade: " + cCidade 
    ?" Curso:  " + cCurso
    ?" ==============================="  
    ?"Data: " + cData
    ?"Hora: " + cHora 
    ?" ==============================="  
RETURN NIL