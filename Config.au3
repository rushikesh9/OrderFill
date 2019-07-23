#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=E:\Rushikesh\EIEO\Form2.kxf
$Form2 = GUICreate("Configure Order", 286, 471, 646, 388)
$Label1 = GUICtrlCreateLabel("Take Profit", 176, 376, 56, 17)
$Input1 = GUICtrlCreateInput("1", 32, 376, 121, 21)
$Input2 = GUICtrlCreateInput("5", 32, 336, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
$Label2 = GUICtrlCreateLabel("Stop Loss", 176, 336, 56, 17)
$Label3 = GUICtrlCreateLabel("Qty", 176, 296, 56, 17)
$Input3 = GUICtrlCreateInput("75", 32, 296, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_NUMBER))
$Input4 = GUICtrlCreateInput("OPTIDX", 32, 56, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_UPPERCASE))
GUICtrlCreateLabel("Instrument Name", 176, 56, 104, 17)
$Label5 = GUICtrlCreateLabel("Exchange Segment", 176, 96, 104, 17)
$Input5 = GUICtrlCreateInput("NFO", 32, 96, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_UPPERCASE))
$Input6 = GUICtrlCreateInput("NIFTY", 32, 136, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_UPPERCASE))
$Label6 = GUICtrlCreateLabel("Symbol", 176, 136, 56, 17)
$Input7 = GUICtrlCreateInput("CE", 32, 176, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_UPPERCASE))
$Label7 = GUICtrlCreateLabel("Option Type", 176, 176, 72, 17)
$Input8 = GUICtrlCreateInput("11500", 32, 216, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_UPPERCASE,$ES_NUMBER))
$Label8 = GUICtrlCreateLabel("Strike Price", 176, 216, 72, 17)
$Button1 = GUICtrlCreateButton("Save", 105, 416, 75, 25)
$Label9 = GUICtrlCreateLabel("Expiry Date", 176, 256, 56, 17)
$Input9 = GUICtrlCreateInput("04Apr2019", 32, 256, 121, 21)
$Combo1 = GUICtrlCreateCombo("", 32, 16, 121, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Bracket|Limit|Market|Cover")
$Order = GUICtrlCreateLabel("Order Type", 176, 16, 57, 17)
GUISetState(@SW_SHOW)
$sFilePath = "C:\Orders\Config.ini"
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		 Case $Button1
			IniWrite($sFilePath, "Value", "OrderType", GUICtrlRead($Combo1))
		   IniWrite($sFilePath, "Value", "TP", GUICtrlRead($Input1))
		   IniWrite($sFilePath, "Value", "SL", GUICtrlRead($Input2))
		   IniWrite($sFilePath, "Value", "Qty", GUICtrlRead($Input3))
		   IniWrite($sFilePath, "Value", "Inst", GUICtrlRead($Input4))
		   IniWrite($sFilePath, "Value", "Segment", GUICtrlRead($Input5))
		   IniWrite($sFilePath, "Value", "Symbol", GUICtrlRead($Input6))
		   IniWrite($sFilePath, "Value", "Option", GUICtrlRead($Input7))
		   IniWrite($sFilePath, "Value", "Strike", GUICtrlRead($Input8))
		   IniWrite($sFilePath, "Value", "Expiry", GUICtrlRead($Input9))
			Exit

	EndSwitch
WEnd
