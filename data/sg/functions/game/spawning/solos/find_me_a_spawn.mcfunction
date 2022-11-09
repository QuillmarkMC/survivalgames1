#check if no more available spots
function sg:game/spawning/solos/check_overcrowd

#find all available spots
execute as @e[tag=SGSpawnMarker] if score @s spawning < $players_per_spawn spawning run tag @s add SGAvailableSpawnMarker

#mark one for use and tp to it
execute as @e[tag=SGAvailableSpawnMarker,sort=random,limit=1] run tag @s add SGNextSpawn
tp @s @e[tag=SGNextSpawn,limit=1]
execute as @e[tag=SGNextSpawn] run scoreboard players add @s spawning 1

#reset
tag @e[tag=SGNextSpawn] remove SGNextSpawn
tag @e[tag=SGAvailableSpawnMarker] remove SGAvailableSpawnMarker