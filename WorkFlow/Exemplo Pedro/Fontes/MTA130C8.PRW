#Include 'Rwmake.ch'

/*
�����������������������������������������������������������������������������
���Programa  �MTA130C8  �Autor  � Pedro Augusto      � Data � 26/08/14    ���
�������������������������������������������������������������������������͹��
���Desc.     � Ponto de entrada na geracao de cada item da cotacao. Neste ���
���          � momento tanto o SC1 quanto o SC8 estao posicionados.       ���
���          � Esta sendo utilizado para efetuar a gravacao do usuario    ���
�������������������������������������������������������������������������͹��
���Uso       � MIRASSOL                                                   ���
�����������������������������������������������������������������������������
*/

User Function MTA130C8()

Local aAreaA := GetArea()

DbSelectArea('SC8')
RecLock('SC8',.f.)
SC8->C8_XUSER := __cUserId
MsUnLock()

RestArea( aAreaA )

Return