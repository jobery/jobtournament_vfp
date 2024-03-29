*** programa para preparar entornode desarrollo
*** programa inicio de aplicacion ***

_Screen.Visible = .F.

Set ENGINEBEHAVIOR 70

DoEvents

Set Talk Off
Set Exclusive Off
Set Date To Dmy
Set Century On
Set Deleted On
Set Status Off
Set Exact On
Set Sysmenu Off
Set Escape Off &&On
Set Safety Off
Set Status Bar Off
Set Multilocks On
Set Scoreboard Off
Set Intensity On
Set Date Dmy
Set Delete On
Set Hours To 24
Set Clock Status
Set StrictDate To 0
Set Refresh To 1,1
STACKSIZE 				= 1000

Set Optimize On
Set Bell  To
Set Confirm  On

*** se define el path del sistema
vc_sis_path = Sys(5)+Curdir()
vc_sis_path = '"'+vc_sis_path+'"'
Set Default To Sys(5)+Curdir()
Set Path To programs,Class,reports,icons,Forms;

_Screen.Caption =  ".:: Sistema de Torneos ::. Jobery Version 1.0.0"
_Screen.Refresh()

*** se define los programas del sistema
Set Procedure To ;
	libraries\lib_security.prg,;
	libraries\lib_errors.prg,;
	libraries\lib_general.prg;
	Additive

Set Classlib To ;
	class\class_security ,;
	class\class_form ,;
	class\themedtitlebar ,;
	class\vfpblueskin ,;
	class\placeholder ,;
	class\class_objects ;
	ADDITIVE

*** variables publicas
Public PB_SIS_VERSION,PB_SIS_PATH,PB_SIS_LOGIN
Public PB_USUARIO,PB_NOMBRE_USUARIO,PB_APELLIDO_USUARIO
Public PB_ID_TORNEO,PB_ID_EQUIPO,PB_ID_JUGADOR

Set REPORTBEHAVIOR 80

If File(Fullpath("programs\FoxyPreviewer.app"))
	Do (Fullpath("programs\FoxyPreviewer.app"))
Endif

* Report output
_ReportOutput = Fullpath("REPORTOUTPUT.APP")
* Report preview
_ReportPreview = Fullpath("REPORTPREVIEW.APP")
* Report Writer
_ReportBuilder = Fullpath("REPORTBUILDER.APP")

On Shutd Do libraries\lib_exit.prg

*** set de errores
On Error Do libraries\lib_errors.prg With Error(),Program(),Lineno()