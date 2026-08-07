#Include "Protheus.ch"

User Function STTZZ1()

    Local oErro
    Local cMensagem := ""

    BEGIN SEQUENCE

        DbSelectArea("ZZ1")
        DbSetOrder(1)

        AxCadastro("ZZ1","Controle de Fornecimento")

    RECOVER USING oErro

        If ValType(oErro) == "O"
            cMensagem := oErro:Description
        Else
            cMensagem := "Erro inesperado."
        EndIf

        ConOut("Erro na rotina STTZZ1: " + cMensagem)

        MsgStop(cMensagem,"Erro")

    END SEQUENCE

Return