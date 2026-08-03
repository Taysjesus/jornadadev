#include "protheus.ch"

User Function STTIP001()

    Private cCadastro := "Pets"

    DbSelectArea("ZA1")
    DbSetOrder(1)

    AxCadastro("ZA1", "Pets")

Return Nil