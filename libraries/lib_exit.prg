*** libreria salir  ***

On Shutdown
If Messagebox('� Desea Salir de la Aplicacion ?',4+32,'Confirme')=6
	If Empty(Sys(9))
		Close Tables All
		Quit
	Else
		Close Tables All
		Close All
		Set Sysmenu To Default
		Clear Event
		_Screen.RemoveObject("imgWallPaper","IMAGE")
		Cancel
	Endif
Else
	On Shutdown Do lib_exit
Endif
