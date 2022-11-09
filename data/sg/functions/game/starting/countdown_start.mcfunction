##Set up map
function sg:game/chests/restock/all
function sg:game/spawning/summon/all
execute as @e[tag=SGSpawnMarker] at @s positioned ~-1 ~ ~-1 run place template sg:player_cage

##Spawn players into map
function sg:game/spawning/solos/spawn
effect clear @a
effect give @a weakness 999999 255 true
execute as @a[tag=!SGPlaying] run function sg:game/spectator/join

##Start starting countdown
scoreboard players operation $countdown countdown = $game_start_countdown options
function sg:game/starting/countdown

##New gamestate
scoreboard players operation $state gamestate = $game gamestate