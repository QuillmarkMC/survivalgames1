#unload lobby
function sg:lobby/unload

#set gamestate
scoreboard players operation $state gamestate = $game gamestate

#Set up map
function sg:game/logic/border/set_game
function sg:game/generate/chests/restock/all
function sg:game/generate/anvils/place
#reset total player count
scoreboard players set $TotalPlayers win 0
#Spawn players into map
function sg:game/starting/platform/delay_kill
function sg:game/spawning/check_mode
execute as @a run spawnpoint @s -221 55 115
clear @a
effect clear @a
effect give @a[tag=SGPlaying] weakness infinite 255 true
effect give @a[tag=SGPlaying] resistance infinite 10 true
effect give @a[tag=SGPlaying] regeneration infinite 10 true
gamemode adventure @a[tag=SGPlaying]
execute as @a[tag=!SGPlaying] run function sg:game/spawning/spectator/join

#prepare platform
scoreboard players operation $countdown countdown = $platform_delay options
function sg:game/starting/platform/delay_start

#Map events
#mine bridge collapse
function sg:game/logic/mines/reset
#temple flood
function sg:game/logic/temple/reset/start

#update match id
scoreboard players add $Global matchID 1

#big timer model
execute at @e[type=marker,tag=SGSpectatorSpawnMarker,limit=1] positioned ~1.5 ~5.5 ~-0.5 run summon item_display ~ ~ ~ {teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:pufferfish_bucket",count:1,components:{"minecraft:custom_model_data":15}},Tags:["SGCountdownTimer"]}
scoreboard players set $CountdownTimerActivated timers 1

#bossbar
bossbar set border visible false
bossbar set border players @a

#set number of players
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
scoreboard players operation $ExpectedPlayers win = $CurrentPlayers win

#gamerule
gamerule fallDamage true
gamerule showDeathMessages true
execute if score $UHC options matches 1 run gamerule naturalRegeneration false
difficulty hard
function sg:general/teams/friendly_fire_off