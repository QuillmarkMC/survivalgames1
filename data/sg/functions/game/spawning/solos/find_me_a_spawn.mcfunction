#check if no more available spots
#function sg:game/spawning/solos/check_overcrowd

#find all available spots
#execute as @e[tag=SGSpawnMarker] if score @s spawning < $players_per_spawn spawning run tag @s add SGAvailableSpawnMarker

#mark one for use and tp to it
#execute as @e[tag=SGAvailableSpawnMarker,sort=random,limit=1] run tag @s add SGNextSpawn
#tp @s @e[tag=SGNextSpawn,limit=1]
#execute as @e[tag=SGNextSpawn] run scoreboard players add @s spawning 1

#reset
#tag @e[tag=SGNextSpawn] remove SGNextSpawn
#tag @e[tag=SGAvailableSpawnMarker] remove SGAvailableSpawnMarker

scoreboard players add $NextSpawn spawning 1
execute if score $NextSpawn spawning matches 1 run tp @s @e[type=marker,tag=SGSpawn1,limit=1]
execute if score $NextSpawn spawning matches 2 run tp @s @e[type=marker,tag=SGSpawn2,limit=1]
execute if score $NextSpawn spawning matches 3 run tp @s @e[type=marker,tag=SGSpawn3,limit=1]
execute if score $NextSpawn spawning matches 4 run tp @s @e[type=marker,tag=SGSpawn4,limit=1]
execute if score $NextSpawn spawning matches 5 run tp @s @e[type=marker,tag=SGSpawn5,limit=1]
execute if score $NextSpawn spawning matches 6 run tp @s @e[type=marker,tag=SGSpawn6,limit=1]
execute if score $NextSpawn spawning matches 7 run tp @s @e[type=marker,tag=SGSpawn7,limit=1]
execute if score $NextSpawn spawning matches 8 run tp @s @e[type=marker,tag=SGSpawn8,limit=1]
execute if score $NextSpawn spawning matches 9 run tp @s @e[type=marker,tag=SGSpawn9,limit=1]
execute if score $NextSpawn spawning matches 10 run tp @s @e[type=marker,tag=SGSpawn10,limit=1]
execute if score $NextSpawn spawning matches 11 run tp @s @e[type=marker,tag=SGSpawn11,limit=1]
execute if score $NextSpawn spawning matches 12 run tp @s @e[type=marker,tag=SGSpawn12,limit=1]
execute if score $NextSpawn spawning matches 13 run tp @s @e[type=marker,tag=SGSpawn13,limit=1]
execute if score $NextSpawn spawning matches 14 run tp @s @e[type=marker,tag=SGSpawn14,limit=1]
execute if score $NextSpawn spawning matches 15 run tp @s @e[type=marker,tag=SGSpawn15,limit=1]
execute if score $NextSpawn spawning matches 16 run tp @s @e[type=marker,tag=SGSpawn16,limit=1]
execute if score $NextSpawn spawning matches 17 run tp @s @e[type=marker,tag=SGSpawn17,limit=1]
execute if score $NextSpawn spawning matches 18 run tp @s @e[type=marker,tag=SGSpawn18,limit=1]
execute if score $NextSpawn spawning matches 19 run tp @s @e[type=marker,tag=SGSpawn19,limit=1]
execute if score $NextSpawn spawning matches 20 run tp @s @e[type=marker,tag=SGSpawn20,limit=1]
execute if score $NextSpawn spawning matches 21 run tp @s @e[type=marker,tag=SGSpawn21,limit=1]
execute if score $NextSpawn spawning matches 22 run tp @s @e[type=marker,tag=SGSpawn22,limit=1]
execute if score $NextSpawn spawning matches 23 run tp @s @e[type=marker,tag=SGSpawn23,limit=1]
execute if score $NextSpawn spawning matches 24 run tp @s @e[type=marker,tag=SGSpawn24,limit=1]
execute if score $NextSpawn spawning matches 25 run tp @s @e[type=marker,tag=SGSpawn25,limit=1]
execute if score $NextSpawn spawning matches 26 run tp @s @e[type=marker,tag=SGSpawn26,limit=1]
execute if score $NextSpawn spawning matches 27 run tp @s @e[type=marker,tag=SGSpawn27,limit=1]
execute if score $NextSpawn spawning matches 28 run tp @s @e[type=marker,tag=SGSpawn28,limit=1]
execute if score $NextSpawn spawning matches 29 run tp @s @e[type=marker,tag=SGSpawn29,limit=1]
execute if score $NextSpawn spawning matches 30 run tp @s @e[type=marker,tag=SGSpawn30,limit=1]
execute if score $NextSpawn spawning matches 31 run tp @s @e[type=marker,tag=SGSpawn31,limit=1]
execute if score $NextSpawn spawning matches 32.. run tp @s @e[type=marker,tag=SGSpawn32,limit=1]

execute at @s run function sg:game/starting/platform/summon