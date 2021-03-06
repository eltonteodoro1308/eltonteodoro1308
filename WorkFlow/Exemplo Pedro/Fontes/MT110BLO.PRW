#include "rwmake.ch"
/*
�����������������������������������������������������������������������������
���Programa  �MT110BLO  �Autor  � Pedro Augusto      � Data �  NOV/2014   ���
�������������������������������������������������������������������������͹��
���Desc.     � Ponto de entrada para nao permitir que o usuario libere a  ���
���          � SC se este nao for o aprovador (campo SAI->AI_XAPROV) asso ���
���          � ciado ao solicitante                                       ���
�������������������������������������������������������������������������͹��
���Uso       � MIRA OTM                                                  ���
�����������������������������������������������������������������������������
*/
User Function MT110BLO()                                         
	Local aAreaSC1  := SC1->(GetArea())
	Local _cUser 	:= SC1->C1_USER 
	Local _cAprov 	:= "" 

	DbSelectArea("SAK")
	DbSetOrder(2)
	If SAK->(DbSeek(xFilial("SAK")+SAI->AI_APROV)) 
		_cAprov := SAK->AK_USER
	Endif   

	If _cAprov <> __cUserID
		MsgAlert("Esta solicita��o n�o pode ser desbloqueada, pois voc� n�o � aprovador desta solicitacao.")
	   	Return .F.
	Else
	   	Return .T.
	Endif

	RestArea(aAreaSC1)
    Return lRet
