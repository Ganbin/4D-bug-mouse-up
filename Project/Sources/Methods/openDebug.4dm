//%attributes = {"invisible":true}
#DECLARE($recursive : Boolean)

If (Not($recursive))
	$ref:=New process(Current method name(); 0; "debug"; True)
Else 
	<>debugRef:=Open form window("debug")
	DIALOG("debug")
	CLOSE WINDOW(<>debugRef)
	<>debugRef:=0
End if 