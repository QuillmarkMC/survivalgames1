##Scoreboards
#Gamestate
scoreboard objectives add gamestate dummy
scoreboard players set $lobby gamestate 0
scoreboard players set $game gamestate 1
execute unless score $state gamestate = $game gamestate run scoreboard players operation $state gamestate = $lobby gamestate

#General
scoreboard objectives add var dummy
execute unless score $ChunkLoad var matches 1.. run scoreboard players set $ChunkLoad var 0
scoreboard objectives add options dummy
execute unless score $Debug options matches 0.. run scoreboard players set $Debug options 0
scoreboard players set $lobby_countdown options 10
scoreboard players set $platform_delay options 5
scoreboard players set $platform_rise_time options 257
scoreboard players set $end_firework_total options 3
execute unless score $StartMusic options matches 0.. run scoreboard players set $StartMusic options 0
scoreboard objectives add countdown dummy
scoreboard players set $2 countdown 2
scoreboard objectives add math dummy
scoreboard players set #2 math 2
scoreboard players set #20 math 20
scoreboard players set #60 math 60
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
scoreboard objectives add inventoryState dummy
scoreboard players set $Lobby.Default inventoryState 1
scoreboard players set $Lobby.ArenaFighter inventoryState 2
scoreboard players set $Lobby.Archery inventoryState 3
scoreboard players set $Lobby.1v1 inventoryState 4
scoreboard objectives add teams dummy
scoreboard objectives add enderClick minecraft.custom:minecraft.open_enderchest
scoreboard objectives add dropBedrock minecraft.dropped:minecraft.bedrock
scoreboard objectives add lobbyDoor dummy
scoreboard objectives add lobbySigns trigger
scoreboard objectives add lobbyCountdown dummy
scoreboard objectives add teamSelectTimer dummy
scoreboard objectives add lobbyArena dummy
scoreboard objectives add lobbyArenaRespawn dummy
scoreboard objectives add go_to_sleep trigger
scoreboard objectives add hunger food
scoreboard objectives add archeryQueuePosition dummy
scoreboard objectives add archeryVar dummy
scoreboard objectives add archeryZombieSpawnDelay dummy
scoreboard objectives add archeryHighscore dummy
scoreboard objectives add adminTeleportCooldown dummy
scoreboard objectives add 1v1QueuePosition dummy
scoreboard objectives add 1v1Var dummy
scoreboard objectives add 1v1Killstreak dummy
scoreboard objectives add 1v1Highscore dummy
scoreboard objectives add 1v1Kill playerKillCount
scoreboard objectives add surrender trigger
scoreboard objectives add respawnLocation dummy
scoreboard players set $Lobby.Default respawnLocation 1
scoreboard players set $Lobby.Arena respawnLocation 2
scoreboard players set $Lobby.1v1 respawnLocation 3
scoreboard objectives add lobbyRespawnFailsafe dummy
scoreboard players set $Length lobbyRespawnFailsafe 100
scoreboard objectives add lobbyVar dummy

#Game
scoreboard objectives add spawning dummy
scoreboard objectives add death deathCount
scoreboard objectives add deathDelayTimer dummy
scoreboard objectives add combatTimer dummy
scoreboard players set $CombatCooldown options 100
scoreboard objectives add win dummy
scoreboard objectives add playerPosition dummy
scoreboard objectives add border dummy
scoreboard objectives add timers dummy
scoreboard objectives add oob dummy
scoreboard objectives add caveBridge dummy
scoreboard objectives add temple dummy
scoreboard objectives add openChest minecraft.custom:open_chest

function sg:game/logic/border/init_bossbar
execute if score $state gamestate = $lobby gamestate run function sg:lobby/settings/init
execute if score $state gamestate = $lobby gamestate run function sg:lobby/load

##Forceload
execute unless score $ChunkLoad var matches 1 run function sg:forceload

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
team add Gold
team modify Gold color gold
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
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fireDamage true
gamerule freezeDamage true
gamerule keepInventory false
gamerule mobGriefing false
gamerule playersSleepingPercentage 101
gamerule reducedDebugInfo false
gamerule spectatorsGenerateChunks false
gamerule sendCommandFeedback false