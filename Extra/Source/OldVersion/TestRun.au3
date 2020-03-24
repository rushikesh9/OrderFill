#include <File.au3>

$file = "C:\Orders\buyprice.txt"
FileOpen($file, 0)

For $i = 1 to _FileCountLines($file)
    $line = FileReadLine($file, $i)
msgbox(0,'','BuyPrice is ' & $line)
Next
FileClose($file)
