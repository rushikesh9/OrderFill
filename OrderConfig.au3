#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=d:\rushikesh\trading\orderfill\new form.kxf
$Form2 = GUICreate("OrderFill v2", 323, 479, 505, 226)
$Label1 = GUICtrlCreateLabel("Take Profit", 181, 376, 56, 17)
$Input1 = GUICtrlCreateInput("1", 37, 374, 121, 21)
$Input2 = GUICtrlCreateInput("5", 37, 337, 121, 21)
$Label2 = GUICtrlCreateLabel("Stop Loss", 181, 339, 56, 17)
$Label3 = GUICtrlCreateLabel("Qty", 181, 301, 56, 17)
$Input3 = GUICtrlCreateInput("75", 37, 299, 121, 21)
$Input4 = GUICtrlCreateInput("OPTIDX", 37, 113, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_UPPERCASE))
GUICtrlCreateLabel("Instrument Name", 181, 115, 104, 17)
$Label5 = GUICtrlCreateLabel("Exchange Segment", 181, 40, 104, 17)
$Input5 = GUICtrlCreateInput("NFO", 37, 38, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_UPPERCASE))
$Input6 = GUICtrlCreateInput("NIFTY", 37, 150, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_UPPERCASE))
$Label6 = GUICtrlCreateLabel("Symbol", 181, 152, 56, 17)
$Input7 = GUICtrlCreateInput("CE", 37, 187, 121, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_UPPERCASE))
$Label7 = GUICtrlCreateLabel("Option Type", 181, 189, 72, 17)
$Input8 = GUICtrlCreateInput("10800", 37, 225, 121, 21)
$Label8 = GUICtrlCreateLabel("Strike Price", 181, 227, 72, 17)
$Button1 = GUICtrlCreateButton("Save", 165, 416, 75, 25)
$Label9 = GUICtrlCreateLabel("Expiry Date", 181, 264, 56, 17)
$Input9 = GUICtrlCreateInput("26Sep2019", 37, 262, 121, 21)
$Combo1 = GUICtrlCreateCombo("", 37, 75, 121, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Bracket Order|Limit Order|Market Order|Cover Order")
$Order = GUICtrlCreateLabel("Order Type", 181, 77, 57, 17)
$Read = GUICtrlCreateButton("Read", 36, 416, 75, 25, $BS_FLAT)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


$sFilePath = (@ScriptDir & "\config.ini")

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
		Case $Read
        	GUICtrlSetData ($Combo1, IniRead ("config.ini", "Value", "OrderType", ""))
			GUICtrlSetData ($Input1, IniRead ("config.ini", "Value", "TP", ""))
			GUICtrlSetData ($Input2, IniRead ("config.ini", "Value", "SL", ""))
			GUICtrlSetData ($Input3, IniRead ("config.ini", "Value", "Qty", ""))
			GUICtrlSetData ($Input4, IniRead ("config.ini", "Value", "Inst", ""))
			GUICtrlSetData ($Input5, IniRead ("config.ini", "Value", "Segment", ""))
			GUICtrlSetData ($Input6, IniRead ("config.ini", "Value", "Symbol", ""))
			GUICtrlSetData ($Input7, IniRead ("config.ini", "Value", "Option", ""))
			GUICtrlSetData ($Input8, IniRead ("config.ini", "Value", "Strike", ""))
			GUICtrlSetData ($Input9, IniRead ("config.ini", "Value", "Expiry", ""))


	EndSwitch
WEnd
