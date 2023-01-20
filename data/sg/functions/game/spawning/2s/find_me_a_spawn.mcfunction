#check which team spawn to use, then randomly select one of the markers from that team spawn to spawn the player at
execute if score $NextSpawn spawning matches 1 run tag @e[type=marker,tag=SGSpawn2s.1,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 2 run tag @e[type=marker,tag=SGSpawn2s.2,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 3 run tag @e[type=marker,tag=SGSpawn2s.3,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 4 run tag @e[type=marker,tag=SGSpawn2s.4,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 5 run tag @e[type=marker,tag=SGSpawn2s.5,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 6 run tag @e[type=marker,tag=SGSpawn2s.6,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 7 run tag @e[type=marker,tag=SGSpawn2s.7,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 8 run tag @e[type=marker,tag=SGSpawn2s.8,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 9 run tag @e[type=marker,tag=SGSpawn2s.9,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 10 run tag @e[type=marker,tag=SGSpawn2s.10,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 11 run tag @e[type=marker,tag=SGSpawn2s.11,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 12 run tag @e[type=marker,tag=SGSpawn2s.12,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 13 run tag @e[type=marker,tag=SGSpawn2s.13,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 14 run tag @e[type=marker,tag=SGSpawn2s.14,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 15 run tag @e[type=marker,tag=SGSpawn2s.15,sort=random,limit=1] add SGTempMarkerSpawn
execute if score $NextSpawn spawning matches 16 run tag @e[type=marker,tag=SGSpawn2s.16,sort=random,limit=1] add SGTempMarkerSpawn

#remove tag from spawn marker so it cannot be chosen by another player
execute if score $NextSpawn spawning matches 1 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.1
execute if score $NextSpawn spawning matches 2 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.2
execute if score $NextSpawn spawning matches 3 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.3
execute if score $NextSpawn spawning matches 4 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.4
execute if score $NextSpawn spawning matches 5 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.5
execute if score $NextSpawn spawning matches 6 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.6
execute if score $NextSpawn spawning matches 7 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.7
execute if score $NextSpawn spawning matches 8 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.8
execute if score $NextSpawn spawning matches 9 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.9
execute if score $NextSpawn spawning matches 10 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.10
execute if score $NextSpawn spawning matches 11 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.11
execute if score $NextSpawn spawning matches 12 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.12
execute if score $NextSpawn spawning matches 13 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.13
execute if score $NextSpawn spawning matches 14 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.14
execute if score $NextSpawn spawning matches 15 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.15
execute if score $NextSpawn spawning matches 16 run tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGSpawn2s.16

tp @s @e[type=marker,tag=SGTempMarkerSpawn,limit=1]
tag @s remove SGNotSpawned
execute unless score $NextSpawn spawning matches 17.. at @s run function sg:game/starting/platform/summon
tag @e[type=marker,tag=SGTempMarkerSpawn,limit=1] remove SGTempMarkerSpawn

execute if score $NextSpawn spawning matches 17.. run function sg:general/error/max_players
execute unless score $NextSpawn spawning matches 17.. run scoreboard players add $TotalPlayers win 1