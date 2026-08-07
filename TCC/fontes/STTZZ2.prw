#Include "Protheus.ch"

User Function STTZZ2()

    Local oErro
    Local cMensagem := ""

    BEGIN SEQUENCE

        DbSelectArea("ZZ2")
        DbSetOrder(1)

        AxCadastro("ZZ2","Ocorrências do Fornecedor")

    RECOVER USING oErro

        If ValType(oErro) == "O"
            cMensagem := oErro:Description
        Else
            cMensagem := "Erro inesperado."
        EndIf

        ConOut("Erro na rotina STTZZ2: " + cMensagem)

        MsgStop(cMensagem,"Erro")

    END SEQUENCE

Return