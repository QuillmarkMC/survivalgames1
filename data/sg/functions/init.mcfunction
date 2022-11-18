##Scoreboards
#Gamestate
scoreboard objectives add gamestate dummy
execute unless score $state gamestate matches 1.. run scoreboard players set $state gamestate 0
scoreboard players set $lobby gamestate 0
scoreboard players set $game gamestate 1
execute unless score $TimerModelInstall gamestate matches 1.. run function sg:install_timer

#General
scoreboard objectives add options dummy
scoreboard players set $lobby_countdown options 10
scoreboard players set $game_start_countdown options 30
scoreboard players set $platform_delay options 5
scoreboard players set $platform_rise_time options 257
scoreboard players set $grace_period options 30
scoreboard players set $max_team_player_count options 1
scoreboard players set $end_firework_total options 3
scoreboard players set $initial_border_grace options 600
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
scoreboard players set $CombatCooldown options 100
scoreboard objectives add win dummy
scoreboard objectives add playerPosition dummy
scoreboard objectives add border dummy

function sg:game/logic/border/init_bossbar

##Forceload
#cornucopia
#forceload add -262 164 -185 72
#entire map monkaS
forceload add -715 613 -662 -376
forceload add -651 613 -598 -376
forceload add -587 613 -534 -376
forceload add -523 613 -470 -376
forceload add -459 613 -406 -376
forceload add -395 613 -342 -376
forceload add -331 613 -278 -376
forceload add -267 613 -214 -376
forceload add -203 613 -150 -376
forceload add -139 613 -86 -376
forceload add -75 613 -22 -376
forceload add -11 613 42 -376
forceload add 53 613 106 -376
forceload add 117 613 170 -376
forceload add 181 613 234 -376
forceload add 229 613 282 -376

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