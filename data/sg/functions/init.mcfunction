##Scoreboards
#Gamestate
scoreboard objectives add gamestate dummy
execute unless score $state gamestate matches 1.. run scoreboard players set $state gamestate 0
scoreboard players set $lobby gamestate 0
scoreboard players set $game gamestate 1

#General
scoreboard objectives add options dummy
scoreboard players set $lobby_countdown options 10
scoreboard players set $game_start_countdown options 30
scoreboard players set $platform_delay options 5
#scoreboard players set $platform_rise_time options 130
scoreboard players set $platform_rise_time options 258
scoreboard players set $grace_period options 30
scoreboard players set $max_team_player_count options 1
scoreboard objectives add countdown dummy
scoreboard players set $2 countdown 2
#detect leavers
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
#match ID for handling DCs
scoreboard objectives add matchID dummy
execute unless score $Global matchID matches 1.. run scoreboard players set $Global matchID 0

#Game
scoreboard objectives add spawning dummy
scoreboard objectives add death deathCount
scoreboard objectives add combatTimer dummy
scoreboard objectives add win dummy

##Teams
team add Aqua
team modify Aqua color aqua
team add Black
team modify Black color black
team add Blue
team modify Blue color blue
team add Cyan
team modify Cyan color dark_aqua
team add Dark_Blue
team modify Dark_Blue color dark_blue
team add Dark_Gray
team modify Dark_Gray color dark_gray
team add Dark_Green
team modify Dark_Green color dark_green
team add Purple
team modify Purple color dark_purple
team add Dark_Red
team modify Dark_Red color dark_red
team add Orange
team modify Orange color gold
team add Gray
team modify Gray color gray
team add Green
team modify Green color green
team add Magenta
team modify Magenta color light_purple
team add Red
team modify Red color red
team add White
team modify White color white
team add Yellow
team modify Yellow color yellow
team add Solo
team add Spectator
team modify Spectator color dark_gray
team modify Spectator prefix {"text":"[Spectator] "}

##Gamerules
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting false
gamerule doMobLoot true
#mob spawning?
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops true
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule freezeDamage true
gamerule keepInventory false
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule playersSleepingPercentage 101
gamerule reducedDebugInfo false
gamerule showDeathMessages false
gamerule spectatorsGenerateChunks false
#turn this off before prod
gamerule sendCommandFeedback true