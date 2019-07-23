# About
The script code uses AutoIt script to control screen movements for sending orders from Amibroker to Nest Trader

read more about AutoIt here
https://www.autoitscript.com/site/ 


# How-To

1: Copy appropriate exes (x86/x64) to  C:\Orders, Path should look like "C:\Orders\Config.exe"

2: Add the code below at the end of your AFL strategy/trading system  

// Sends Order to NEST and sets time delay to avoid repeated orders
// calculate Time Difference 
last_time = TimeNum();
Buy_time = ValueWhen(Buy,last_time);
pasuetime = DateTimeDiff(last_time,Buy_time);
// Clear order flag when time difference is > n value 
if( LastValue(pasuetime) >= 10000)
{
   _TRACE("Order Cleared");
   StaticVarRemove("OrderAlreadyPlaced");
}
// Write Price to text file and set order flag 
if( LastValue( Buy ) And Nz( StaticVarGet("OrderAlreadyPlaced") ) == False )
{
    ShellExecute("C:/Orders/TestRun.exe","","");
    OrderPrice = fopen( "C:/Orders/buyprice.txt", "w"); 
    fputs(""+BuyPrice, OrderPrice ); 
    fclose( OrderPrice ); 
    StaticVarSet( "OrderAlreadyPlaced", True );
    _TRACE("Order Placed");
}

3: once you have confirmed with the buy price displayed by testrun.exe 
Use SendOrder.exe instead of TestRun.exe for live trading

ShellExecute("C:/Orders/SendOrder.exe","",""); 

4:  Run the program and see if the order box is being filled as per your preference. (make sure run as admin/etc is on)


# Bugs 

this script is tested in a limited environment and the possibility of errors/bugs could be present. 
