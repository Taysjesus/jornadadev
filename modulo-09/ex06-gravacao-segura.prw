#include "protheus.ch"

User Function STTIP003SALVAR()

    Local oErro
    Local cMensagem := ""
    Local lGravou   := .F.

    BEGIN SEQUENCE

        If Empty(M->Z1_CLIENTE)
            cMensagem := "Informe o cliente."
            Break(cMensagem)
        EndIf

        If Empty(M->Z1_ASSUNTO)
            cMensagem := "Informe o assunto."
            Break(cMensagem)
        EndIf

        DbSelectArea("SZ1")

        BEGIN TRANSACTION

            If !RecLock("SZ1", .T.)
                cMensagem := "Nao foi possivel bloquear a tabela SZ1."
                DisarmTransaction()
                Break(cMensagem)
            EndIf

            SZ1->Z1_FILIAL  := xFilial("SZ1")
            SZ1->Z1_CODIGO  := M->Z1_CODIGO
            SZ1->Z1_CLIENTE := M->Z1_CLIENTE
            SZ1->Z1_ASSUNTO := M->Z1_ASSUNTO

            MsUnlock()

            lGravou := .T.

        END TRANSACTION

        MsgInfo("Contato gravado com sucesso!", "Contatos")

    RECOVER USING oErro

        DisarmTransaction()

        If ValType(oErro) == "O"
            cMensagem := oErro:Description
        ElseIf ValType(oErro) == "C" .And. !Empty(oErro)
            cMensagem := oErro
        ElseIf Empty(cMensagem)
            cMensagem := "Erro nao identificado."
        EndIf

        MsgStop( ;
            "Nao foi possivel gravar o contato." + CRLF + ;
            cMensagem, ;
            "Erro na gravacao" ;
        )

        U_GRAVARLOG("STTIP003SALVAR", cMensagem)

    END SEQUENCE

Return lGravou


User Function TESTE003()

    Private Z1_CODIGO  := "000001"
    Private Z1_CLIENTE := "Joao Silva"
    Private Z1_ASSUNTO := "Contato Comercial"

    U_STTIP003SALVAR()

Return Nil