Lparameters nError, cMethod, nLine

*** Libreria de Errores ***

Set Procedure To libraries\lib_general.prg Additive


Local laError[1]
Aerror(laError)

Msg =       [Error: ]     + Transform(nError) + ' '  + Chr(13)
Msg = Msg + [Ocurri� en la l�nea ]    + Transform(nLine)
Msg = Msg + [ de ]  + cMethod + ' '  + Chr(13)
Msg = Msg + [Error: ]     + Message() + Chr(13)
Msg = Msg + [C�digo que produjo el error: ] + Message(1)
Messageboxs(Msg,16,"Error # "+Transform(nError))

verr_descri	= Message()
verr_error 	= Transform(nError)
verr_linea 	= Transform(nLine)
verr_metodo	= Transform(cMethod)
verr_fecha	= Date()
verr_hora	= Time()
vc_pcusu	= Sys(0)
verr_usupc	= Alltrim(Substr(vc_pcusu,At('#',vc_pcusu)+1,Len(vc_pcusu)))
verr_pc		= Getwordnum(Sys(0),1)

If Vartype(pb_id_empresa)<>'N'
	pb_id_empresa = 0
Endif

If Vartype(pb_usuario)<>'C'
	pb_usuario = ''
Endif

Insert Into System!tbl_errores(ero_error,ero_usuario,ero_linea,ero_fecha,ero_hora,ero_metodo,ero_mensaje,ero_nom_pc,ero_usu_pc,ero_descripcion,ero_nue_reg);
	values(verr_error,pb_usuario,verr_linea,verr_fecha,verr_hora,verr_metodo,Msg,verr_pc,verr_usupc,verr_descri,DATETIME())
