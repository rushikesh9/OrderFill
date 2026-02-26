# NOTE

Since most brokers now have shifted to new platform, THis tool is EOL

# About
OrderFill uses AutoIt scripts to control screen movements for sending orders to Nest Trader
can be used with any program that supports shellexecute command (metatrader/amibroker/excel/etc)

Read more about AutoIt scripts
https://www.autoitscript.com/site/ 

# How-To

1: Make sure all files are in the same directory  

2: Use OrderConfig to set your preferences for scrip to trade

3: Use Testrun to check if you are getting proper output (buy/sell, price value)

4: Use OrderFire for live trading 

5: The code checks last modified buy/sell txt file to determine to buy/sell conduction

6: Make sure run as admin is turned on for all files

# User Manual 

For Visual Instructions refer to User Manual 

# Bugs

OrderFill is tested in a limited environment and doesn't come under any guaranty,

1: Repeated Orders in Amibroker

Some afl codes keep generating buy/sell signals when condition is true more than once 
This problem occurs due to incorrect logic in code 

FIX: There is a included afl code that creates a flag when order is sent and waits for (n)time until new orders can be placed.


2: Orders don't get sent if there's a blank line in watch list

FIX: Don't use spaces between symbol names in market watch


3 For Trading MCX future use files with _mcx 



# About

The code is available free for use and NOT for redistribution/reselling

# License
Copyright 2021 rushikesh9

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

