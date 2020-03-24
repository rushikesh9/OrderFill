#include <Date.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>

Local $buyprice = @ScriptDir & "\buyprice.txt"
Local $hFileOpen = FileOpen($buyprice, $FO_APPEND + $FO_CREATEPATH)
FileSetPos($hFileOpen, 0, $FILE_BEGIN)
Local $buyprice = FileReadLine ($hFileOpen,1)
FileClose($hFileOpen)

Local $sellprice = @ScriptDir & "\sellprice.txt"
Local $hFileOpen = FileOpen($sellprice, $FO_APPEND + $FO_CREATEPATH)
FileSetPos($hFileOpen, 0, $FILE_BEGIN)
Local $sellprice = FileReadLine ($hFileOpen,1)
FileClose($hFileOpen)

$sFile1=@ScriptDir & "\buyprice.txt"
$sFile2=@ScriptDir & "\sellprice.txt"

$FileTime1 = FileGetTime($sFile1, 0, 1)
$FileTime2 = FileGetTime($sFile2, 0, 1)

If $FileTime1>$FileTime2 Then
	msgbox(0,'Buy','Buy Price is ' & $buyprice)
else
	if $FileTime1<$FileTime2 Then
	msgbox(0,'Sell','Sell Price is ' & $sellprice)
endif
endif