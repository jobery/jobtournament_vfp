*** libreria de seguridad ***
****************************************************************************************************************************************************************************************************
Function fnc_seg_encrypt
Lparameters vc_cod,vc_sal

Set Classlib To Class\class_security.vcx Additive

vc_sal = Iif(Vartype(vc_sal) <> "C","",Alltrim(vc_sal))

Private vc_rtn_encritp As String

vo_encript = Createobject("blowfish")

vc_rtn_encritp = vo_encript.codificar("+%-#/&#@!=" + vc_cod + ".?<#@-*+#"  + vc_sal + "$#&%@(?¡@>")
Release vo_encript,vc_sal,vc_cod

Return vc_rtn_encritp
Endfunc
****************************************************************************************************************************************************************************************************
