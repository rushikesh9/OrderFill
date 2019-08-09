# About
The script code uses AutoIt script to control screen movements for sending orders from Amibroker to Nest Trader

read more about AutoIt here
https://www.autoitscript.com/site/ 


Only for buying,
For selling, short covering modify the code and compile different executable.
In sendorder.au just change f1 to f2 on line 29, use this exe for selling

# How-To

1: Copy appropriate exes (x86/x64) to  C:\Orders, Path should look like "C:\Orders\Config.exe"

2: Add the code in include.txt at the end of your AFL strategy/trading system  

3: Confirm if buy price is same as your strategy with testrun.exe

4: Use SendOrder.exe instead of TestRun.exe for live trading

5: Run the program and see if the order box is being filled as per your preference. (make sure run as admin/etc is on)


# Bugs 

this script is tested in a limited environment and the possibility of errors/bugs could be present. 

# Support/Future Development

To Do

Create single executable for both buying/selling
Create a better interface
Add an option for executing multiple orders/closing orders partly



if you have any issues or if your interested in this project, contact me via twitter
https://twitter.com/rushikesh0009

