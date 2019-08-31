#include <Date.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>

$sFile1=@ScriptDir & "\buyprice.txt"
$sFile2=@ScriptDir & "\sellprice.txt"
$buy=@ScriptDir & "\buy.exe"
$sell=@ScriptDir & "\sell.exe"

$FileTime1 = FileGetTime($sFile1, 0, 1)
$FileTime2 = FileGetTime($sFile2, 0, 1)

If $FileTime1>$FileTime2 Then
	ShellExecute($buy)
else
	if $FileTime2>$FileTime1 Then
	ShellExecute($sell)
endif
endif