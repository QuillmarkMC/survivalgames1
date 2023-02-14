##Scoreboards
#Gamestate
scoreboard objectives add gamestate dummy
scoreboard players set $lobby gamestate 0
scoreboard players set $game gamestate 1
execute unless score $state gamestate = $game gamestate run scoreboard players operation $state gamestate = $lobby gamestate
execute if score $state gamestate = $lobby gamestate run function sg:lobby/load
execute unless score $TimerModelInstall gamestate matches 1.. run function sg:install_timer

#General
scoreboard objectives add options dummy
scoreboard players set $lobby_countdown options 10
scoreboard players set $game_start_countdown options 30
scoreboard players set $platform_delay options 5
scoreboard players set $platform_rise_time options 257
scoreboard players set $grace_period options 30
scoreboard players set $end_firework_total options 3
scoreboard players set $initial_border_grace options 600
scoreboard players set $restock_chests options 300
scoreboard objectives add countdown dummy
scoreboard players set $2 countdown 2
#detect leavers
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
#match ID for handling DCs
scoreboard objectives add matchID dummy
execute unless score $Global matchID matches 1.. run scoreboard players set $Global matchID 0

#lobby
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add teamID dummy
scoreboard players set $Team.Aqua teamID 1
scoreboard players set $Team.Black teamID 2
scoreboard players set $Team.Blue teamID 3
scoreboard players set $Team.Cyan teamID 4
scoreboard players set $Team.Dark_Blue teamID 5
scoreboard players set $Team.Dark_Gray teamID 6
scoreboard players set $Team.Dark_Green teamID 7
scoreboard players set $Team.Purple teamID 8
scoreboard players set $Team.Dark_Red teamID 9
scoreboard players set $Team.Gold teamID 10
scoreboard players set $Team.Gray teamID 11
scoreboard players set $Team.Green teamID 12
scoreboard players set $Team.Magenta teamID 13
scoreboard players set $Team.Red teamID 14
scoreboard players set $Team.White teamID 15
scoreboard players set $Team.Yellow teamID 16
scoreboard objectives add teams dummy
scoreboard objectives add enderClick minecraft.custom:minecraft.open_enderchest
scoreboard objectives add dropBedrock minecraft.dropped:minecraft.bedrock
scoreboard objectives add lobbyDoor dummy

#Game
scoreboard objectives add spawning dummy
scoreboard objectives add death deathCount
scoreboard objectives add combatTimer dummy
scoreboard players set $CombatCooldown options 100
scoreboard objectives add win dummy
scoreboard objectives add playerPosition dummy
scoreboard objectives add border dummy
scoreboard objectives add timers dummy
scoreboard objectives add oob dummy
scoreboard objectives add caveBridge dummy

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
#mine bridge
#forceload add 172 1 183 29

##Teams
team add Aqua
team modify Aqua color aqua
team modify Aqua friendlyFire false
team add Black
team modify Black color black
team modify Black friendlyFire false
team add Blue
team modify Blue color blue
team modify Blue friendlyFire false
team add Cyan
team modify Cyan color dark_aqua
team modify Cyan friendlyFire false
team add Dark_Blue
team modify Dark_Blue color dark_blue
team modify Dark_Blue friendlyFire false
team add Dark_Gray
team modify Dark_Gray color dark_gray
team modify Dark_Gray friendlyFire false
team add Dark_Green
team modify Dark_Green color dark_green
team modify Dark_Green friendlyFire false
team add Purple
team modify Purple color dark_purple
team modify Purple friendlyFire false
team add Dark_Red
team modify Dark_Red color dark_red
team modify Dark_Red friendlyFire false
team add Gold
team modify Gold color gold
team modify Gold friendlyFire false
team add Gray
team modify Gray color gray
team modify Gray friendlyFire false
team add Green
team modify Green color green
team modify Green friendlyFire false
team add Magenta
team modify Magenta color light_purple
team modify Magenta friendlyFire false
team add Red
team modify Red color red
team modify Red friendlyFire false
team add White
team modify White color white
team modify White friendlyFire false
team add Yellow
team modify Yellow color yellow
team modify Yellow friendlyFire false
team add Solo
team add Ready
team modify Ready color dark_green
team add Spectator
team modify Spectator color dark_gray
team add Random
team modify Random color dark_aqua

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
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops true
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
#gamerule fallDamage true
gamerule fireDamage true
gamerule freezeDamage true
gamerule keepInventory false
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule playersSleepingPercentage 101
gamerule reducedDebugInfo false
gamerule showDeathMessages true
gamerule spectatorsGenerateChunks false
#turn this off before prod
gamerule sendCommandFeedback true

difficulty easy