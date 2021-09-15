--[[
    ##### Veri's Admin Mod Config Information #####
    This file contains the default config options that the server assumes on startup.
    This should be a valid Lua script, or it will not work. Do not remove values from this script, or alter anything before an equals sign!
    If you're having problems, typing reloadlua in the console will indicate a line number where the issue is occurring.
    Each option has a comment to its right describing what it changes, with its type in square brackets.
    [BOOL] should be true or false, [INT] should be a whole number (no decimals), [STR] should be text enclosed in double quotation marks, [FLOAT] should be a number (decimals allowed)
    Some values are tagged with [TABLE] - and as such are Lua tables. [NC] tagged values should never be changed by code while a server is active, and this file should instead be changed and the server restarted.

    Additionally, back this file up. Updates to the mod may overwrite your changes.
]]--


--[[
    Command Config
    Configures the functionality of commands added by this mod
]]--
vam.config.allowSuicideCommand=true --[BOOL] Allow players to use /killme to instantly die
vam.config.allowSpawnAsCommand=true --[BOOL] Allow players to use /spawnas to become the species of their choice after death
vam.config.spawnAsWhitelist={"husk","crawler","mudraptor"} --[STR][TABLE] Whitelist of species that spawnas command is restricted to

--[[
    Moderation ease-of-use
    Makes server administration easier
]]--
vam.config.interceptProhibitedMessages=true --[BOOL] Intercepts text chat messages that have words in the prohibited word list on them
vam.config.removeDisconnectedCharacters=true --[BOOL] Remove disconnected clients' characters from game (if your connection is bad, you should not have this on)
vam.config.allowMidroundSpawningFromNewClients=true --[BOOL] Gives newly connected clients the option to join in mid-round (for 30 seconds from connect)
vam.config.disconnectTimerDeathBypass=true --[BOOL] Gives clients that were disconnected when their character died the opportunity to respawn at full health in the body they were last in
vam.config.disableSpamKick=true --[NC][BOOL] Disables kicking players when they spam in text chat

--[[
    Custom Karma System (NON-FUNCTIONAL)
    Replaces the old karma system with a better version
    This is not a replacement for a good admin. Don't use it as such.
]]--
vam.config.enableCustomKarmaSystem=false --[BOOL] Should the custom karma system be enabled
vam.config.playersCanViewKarmaScore=true --[BOOL] Allows players to view their own karma score
vam.config.passiveKarmaChange=0 --[INT] How much should karma change (every think event)
vam.config.startingKarmaScore=1800 --[INT] When a player joins, what should their karma score be at
vam.config.karmaScoreMax=2000 --[INT] Max possible karma score
vam.config.karmaScoreMin=0 --[INT] Min possible karma score
vam.config.karmaIncreaseOnGoodBehavior=100 --[INT] How much karma score increases on good behavior
vam.config.karmaDecreaseOnBadBehavior=130 --[INT] How much karma score decreases on bad behavior

--[[
    Text
    Change the text that appears to the player (like a language file)
]]--
vam.config.motdenabled=true --[BOOL] Should a MOTD message appear on newly joined clients' screens
vam.config.motdtitle="motdtitle" --[STR] Title of message (set this to the name of your server)
vam.config.motdcontents="motdcontents" --[STR] Contents of message to send to newly joined clients

vam.config.servermessageprefix="[Server]" --[STR] If a message is sent to a player, it'll appear as if it came from someone named whatever this value is
vam.config.messageInterceptionText="Your message contained prohibited words, and was intercepted. It will not be shown to any players." --[STR] Text to display if a message is intercepted
vam.config.disabledCommandText="This command was disabled by the server admin." --[STR] Generic text to display to users if they try to use a command that's disabled
vam.config.failedCommandAlive="This command does not work when used by living players." --[STR] Rejection message for when users are naughty and try to use dead commands when alive