#generate arena
scoreboard players add $ArenaState lobbyArena 1
execute unless score $ArenaState lobbyArena matches 0..2 run scoreboard players set $ArenaState lobbyArena 0
execute if score $ArenaState lobbyArena matches 0 positioned -253 15 115 positioned ~-39 ~-6 ~-18 run place template sg:arena/desert
execute if score $ArenaState lobbyArena matches 1 positioned -253 15 115 positioned ~-39 ~-6 ~-18 run place template sg:arena/lush_cave
execute if score $ArenaState lobbyArena matches 2 positioned -253 15 115 positioned ~-39 ~-6 ~-18 run place template sg:arena/volcano

#summon respawn points
#south
summon marker -284.5 16.0 156.5 {Tags:["SGArenaRespawn"],Rotation:[180.0f,12.0f]}
summon marker -278.5 16.0 156.5 {Tags:["SGArenaRespawn"],Rotation:[180.0f,12.0f]}
summon marker -272.5 16.0 156.5 {Tags:["SGArenaRespawn"],Rotation:[180.0f,12.0f]}
summon marker -266.5 16.0 156.5 {Tags:["SGArenaRespawn"],Rotation:[180.0f,12.0f]}
summon marker -260.5 16.0 156.5 {Tags:["SGArenaRespawn"],Rotation:[180.0f,12.0f]}
#north
summon marker -286.5 16.0 74.5 {Tags:["SGArenaRespawn"],Rotation:[0.0f,12.0f]}
summon marker -280.5 16.0 74.5 {Tags:["SGArenaRespawn"],Rotation:[0.0f,12.0f]}
summon marker -274.5 16.0 74.5 {Tags:["SGArenaRespawn"],Rotation:[0.0f,12.0f]}
summon marker -268.5 16.0 74.5 {Tags:["SGArenaRespawn"],Rotation:[0.0f,12.0f]}
summon marker -262.5 16.0 74.5 {Tags:["SGArenaRespawn"],Rotation:[0.0f,12.0f]}
#west
summon marker -314.5 16.0 128.5 {Tags:["SGArenaRespawn"],Rotation:[-90.0f,12.0f]}
summon marker -314.5 16.0 122.5 {Tags:["SGArenaRespawn"],Rotation:[-90.0f,12.0f]}
summon marker -314.5 16.0 116.5 {Tags:["SGArenaRespawn"],Rotation:[-90.0f,12.0f]}
summon marker -314.5 16.0 110.5 {Tags:["SGArenaRespawn"],Rotation:[-90.0f,12.0f]}
summon marker -314.5 16.0 104.5 {Tags:["SGArenaRespawn"],Rotation:[-90.0f,12.0f]}

#open respawn point
fill -274 4 115 -274 5 115 air