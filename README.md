# About
OrderFill uses AutoIt scripts to control screen movements for sending orders to Nest Trader
can be used with any program that supports shellexecute  command (metatrader/amibroker/excel/etc)

Read more about AutoIt scripts
https://www.autoitscript.com/site/ 

# How-To

1: Make sure all files are in the same directory  

2: Use OrderConfig to set your preferences for scrip to trade

3: Use Testrun to check if you are getting proper output (buy/sell, price value)

4: Use OrderFire for live trading 

5: The code checks last modified buy/sell txt file to determine to buy/sell conduction

6: make sure run as admin is turned on for all files

# Bugs

OrderFill is tested in a limited environment and doesn't come under any guaranty,


Repeated Orders in Amibroker

Some afl codes keep switching between buy/sell conduction (1/0) when the market value is near to meet conduction or has met the conduction. this problem occurs due to bad coding or unreliable data feeds.

the included afl code creates a flag when order is sent and waits for (n)time until new orders can be placed.


# About

The code is available free for use and NOT for redistribution/reselling

If your interested in this project and want to contribute, contact me. 
https://twitter.com/rushikesh0009
