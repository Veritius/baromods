tw={}
tw.data={} --Internal information storage
tw.intr={} --Internal functions for Tripwire
tw.func={} --Functions for other mods to use

tw.data.thinkRate = 60 --For the love of all that is holy please never touch this number
tw.data.currentThinkInt = 0 --You shouldn't change this, but if you do, stuff will probably break

dofile("Mods/tripwirelibrary/lua/utilities.lua")
dofile("Mods/tripwirelibrary/lua/timekeeper.lua")