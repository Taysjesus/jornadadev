FUNCTION Main()

   LOCAL aArquivos := { "sx2990", "sx3990", "six990", "sx7990", ;
                        "sxb990", "zz1990", "zz2990" }
   LOCAL cArq

   QOut( "== Conversor DBF -> CSV (dicionario do TCC) ==" )
   QOut( "" )

   FOR EACH cArq IN aArquivos
      IF File( cArq + ".dbf" )
         ExportaCSV( cArq )
         QOut( "  [OK] " + cArq + ".dbf  ->  " + cArq + ".csv" )
      ELSE
         QOut( "  [--] ignorado (nao encontrado): " + cArq + ".dbf" )
      ENDIF
   NEXT

   QOut( "" )
   QOut( "Concluido. Suba os .csv gerados no GitHub." )

RETURN NIL


/* Exporta um DBF para CSV com cabecalho (nomes dos campos na 1a linha). */
STATIC FUNCTION ExportaCSV( cArq )

   LOCAL aStru, nCampo, nHandle, cLinha

   USE ( cArq ) ALIAS ORIG NEW READONLY
   aStru := dbStruct()

   nHandle := FCreate( cArq + ".csv" )

   // 1a linha: cabecalho com os nomes dos campos
   cLinha := ""
   FOR nCampo := 1 TO Len( aStru )
      cLinha += Aspas( aStru[ nCampo ][ 1 ] )
      IF nCampo < Len( aStru )
         cLinha += ","
      ENDIF
   NEXT
   FWrite( nHandle, cLinha + Chr( 13 ) + Chr( 10 ) )

   // demais linhas: os registros
   dbGoTop()
   DO WHILE !Eof()
      cLinha := ""
      FOR nCampo := 1 TO Len( aStru )
         cLinha += Aspas( ValorTexto( FieldGet( nCampo ) ) )
         IF nCampo < Len( aStru )
            cLinha += ","
         ENDIF
      NEXT
      FWrite( nHandle, cLinha + Chr( 13 ) + Chr( 10 ) )
      dbSkip()
   ENDDO

   FClose( nHandle )
   dbCloseArea()

RETURN NIL


/* Envolve o texto em aspas duplas, escapando aspas internas (padrao CSV). */
STATIC FUNCTION Aspas( cValor )
   cValor := StrTran( cValor, '"', '""' )
RETURN '"' + cValor + '"'


/* Converte um valor de qualquer tipo de campo para texto. */
STATIC FUNCTION ValorTexto( xVal )
   LOCAL cTipo := ValType( xVal )
   DO CASE
   CASE cTipo == "C" ; RETURN AllTrim( xVal )
   CASE cTipo == "N" ; RETURN AllTrim( Str( xVal ) )
   CASE cTipo == "D" ; RETURN DToC( xVal )
   CASE cTipo == "L" ; RETURN IIF( xVal, ".T.", ".F." )
   CASE cTipo == "M" ; RETURN AllTrim( xVal )
   ENDCASE
RETURN ""