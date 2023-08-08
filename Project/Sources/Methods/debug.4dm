//%attributes = {"invisible":true}
#DECLARE($value : Text)
C_LONGINT(<>debugRef)

If (<>debugRef=0)
	openDebug()
	DELAY PROCESS(Current process; 30)
End if 
CALL FORM(<>debugRef; Formula(Form.items.unshift($value)))


