# NOTE

Since most brokers now have shifted to new platform the support/development for this tool has ended
if you have any other queries contact me 
https://twitter.com/rushikesh0009


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

    Copyright (C) 2019 rushikesh9
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
