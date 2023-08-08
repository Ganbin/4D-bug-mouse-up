//%attributes = {}
#DECLARE($form : Text)

If (Count parameters=0)
	debug("launch form")
	$ref:=New process(Current method name(); 0; "bug"; "bug")
	$ref:=New process(Current method name(); 0; "bug1"; "bug1")
Else 
	$ref:=Open form window($form; Controller form window)
	DIALOG($form)
	CLOSE WINDOW($ref)
End if 
