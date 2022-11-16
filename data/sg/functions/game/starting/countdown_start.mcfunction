##Set up map
function sg:game/chests/restock/all
function sg:game/spawning/summon/all
#close all hatches
execute as @e[tag=SGSpawnMarker,type=marker] at @s[tag=!SGSpectatorSpawnMarker] run setblock ~ ~11 ~ smooth_stone_slab[type=bottom]

##Spawn players into map
function sg:game/spawning/solos/spawn
clear @a
effect clear @a
effect give @a[tag=SGPlaying] weakness 999999 255 true
execute as @a[tag=!SGPlaying] run function sg:game/spawning/spectator/join

##Handle platform
scoreboard players operation $countdown countdown = $platform_delay options
function sg:game/starting/platform/delay_start

##New gamestate
scoreboard players operation $state gamestate = $game gamestate