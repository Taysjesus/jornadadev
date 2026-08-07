#Include "Protheus.ch"

/*/{Protheus.doc} STTZZLIB
Biblioteca de funções do TCC
/*/

//==========================================================
// Retorna o nome do fornecedor
//==========================================================
Static Function NomeFornecedor(cFornec,cLoja)

Return Posicione("SA2",1,xFilial("SA2")+cFornec+cLoja,"A2_NOME")


//==========================================================
// Retorna a descrição do produto
//==========================================================
Static Function NomeProduto(cProduto)

Return Posicione("SB1",1,xFilial("SB1")+cProduto,"B1_DESC")


//==========================================================
// Calcula o percentual de não conformidade
//==========================================================
Static Function PercNaoConforme(nQtdOk,nQtdNok)

    Local nPerc := 0

    If (nQtdOk + nQtdNok) > 0
        nPerc := (nQtdNok / (nQtdOk + nQtdNok)) * 100
    EndIf

Return nPerc


//==========================================================
// Verifica se o certificado vence em até 30 dias
//==========================================================
Static Function CertificadoVencendo(dValidade)

Return dValidade <= (dDataBase + 30)


//==========================================================
// Grava informações de erro no console
//==========================================================
Static Function GravarLogTCC(cFuncao,oErro)

    ConOut("===================================")
    ConOut("LOG DO TCC")
    ConOut("Função: " + cFuncao)

    If ValType(oErro) == "O"
        ConOut("Erro: " + oErro:Description)
    Else
        ConOut("Erro desconhecido.")
    EndIf

    ConOut("===================================")

Return