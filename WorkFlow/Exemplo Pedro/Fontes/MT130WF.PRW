#include "protheus.ch"      
#include "Topconn.ch"      

/*
臼浜様様様様用様様様様曜様様様用様様様様様様様様様様様僕様様用様様様様様様傘�
臼�Programa  � MT130WF � Autor � Pedro Augusto Cardoso � Data mar/2014    艮�
臼麺様様様様謡様様様様擁様様様溶様様様様様様様様様様様瞥様様溶様様様様様様恒�
臼�Descricao � Ponto de Entrada para mostrar o numero da cotacao gerada   艮�
臼藩様様様様溶様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様識�
*/
User Function MT130WF()
	Local aArea		:= GetArea()
	MsgInfo("Cota艫o no. " + PARAMIXB[1] +" gerada com sucesso!", "Cota艫o Gerada")
	RestArea(aArea)
	Return .T.