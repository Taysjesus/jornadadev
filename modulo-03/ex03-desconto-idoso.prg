FUNCTION Main()

    local cNome := ""
    local nIdade := 0
    local dNasc := cTod("")
    local nDesconto := 0
    local nPreco := 0
    local nTotal := 0


    ACCEPT "Digite o nome do cliente: " TO cNome

    ACCEPT "Digite a data de nascimento (AA/MM/AAA): " TO DNasc
     dNasc := cTod(dNasc)

    ACCEPT "Digite o pre‡o do produto:" TO nPreco
    nPreco := Val(nPreco)

    nIdade := Int((Date() - dNasc) / 365)

    IF nIdade > 60
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto :=   0
    ENDIF
    
    
nTotal := nPreco - nDesconto 

?"==================================================="
? PadC( "Resumo da Compra" ,40)
?"==================================================="
?"Cliente: ", cNome
?"Idade: ", Str(nIdade,3) + " anos"
?"Pre‡o Original: ", Str(nPreco, 10,2)
?"Desconto: ", Str(nDesconto, 10,2)
?"Total:  ", Str(nTotal, 10,2)
?"===================================================="


RETURN NIL 