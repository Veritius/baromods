tw={}
tw.data={} --Internal information storage
tw.intr={} --Internal functions for Tripwire
tw.func={} --Functions for other mods to use

tw.data.thinkRate = 60 --For the love of all that is holy please never touch this number

dofile("Mods/tripwirelibrary/Lua/utilities.lua")
dofile("Mods/tripwirelibrary/Lua/timekeeper.lua")
dofile("Mods/tripwirelibrary/Lua/commands.lua")