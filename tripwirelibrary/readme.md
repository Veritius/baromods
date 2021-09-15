# What is Tripwire?
This mod is licensed under the Creative Commons Attributions-ShareAlike 4.0 International License. It can be found here: https://creativecommons.org/licenses/by-sa/4.0/
Tripwire is a mod to make using LuaForBarotrauma easier to use, speeding up modding with new, convenient features.

# How to Use
**tw.func.wait(int tickWait, int secondWait, function functionToCall)**
The wait function adds a delay to the execution of your Barotrauma code.
tickWait is how long to wait in ticks (used for more precise timing), and secondWait is how long to wait in seconds. These are added together. The server ticks 60 times a second.
functionToCall is a function that should contain the code you want to execute next.

*Wait function example*
```
tw.func.wait(0, 3, function()
    --The code you want to run goes here
end)
```