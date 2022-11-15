#this function is executed at a player that just spawned in
#summon cage and entities for rising platform relative to player
execute positioned ~-1 ~12 ~-1 run place template sg:player_cage
execute align xyz positioned ~0.5 ~-2.5 ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,Passengers:[{id:"minecraft:shulker",NoGravity:1,Silent:1,Invulnerable:1,NoAI:1,AttachFace:0,Color:15b,Tags:["SGPlatform"]}],Tags:["SGPlatform"]}
#open hatch at the top
setblock ~ ~12 ~ air