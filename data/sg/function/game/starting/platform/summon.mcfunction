#this function is executed at a player that just spawned in
#summon cage and entities for rising platform relative to player
execute positioned ~-1 ~11 ~-1 run place template sg:player_cage
execute align xyz positioned ~0.5 ~-3.0 ~0.5 run summon armor_stand ~ ~ ~ {NoGravity:true,Invulnerable:true,Invisible:true,Passengers:[{id:"minecraft:shulker",NoGravity:true,Silent:true,Invulnerable:true,NoAI:true,AttachFace:0,Color:15b,Tags:["SGPlatform"]}],Tags:["SGPlatform","SGNewPlatform"]}
execute summon armor_stand run function sg:game/starting/platform/rotations/armor_stand
tag @e[type=armor_stand,tag=SGNewPlatform,limit=1] remove SGNewPlatform

#open hatch at the top
#setblock ~ ~11 ~ air
fill ~ ~12 ~ ~ ~10 ~ air