#clean any previous death markers that may have been unloaded or something idk this is just in case
kill @e[tag=SGTempDeathMarker]

#get last death location in storage and convert to double
data modify storage sg:temp_death DeathLocation set value [0d, 0d, 0d]
execute store result storage sg:temp_death DeathLocation[0] double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute store result storage sg:temp_death DeathLocation[1] double 1.0 run data get entity @s LastDeathLocation.pos[1]
execute store result storage sg:temp_death DeathLocation[2] double 1.0 run data get entity @s LastDeathLocation.pos[2]

#spawn marker and give it new position
summon marker ~ ~ ~ {Tags:["SGTempDeathMarker"]}
data modify entity @e[tag=SGTempDeathMarker,limit=1,sort=nearest] Pos set from storage sg:temp_death DeathLocation

#tp and clean
tp @s @e[tag=SGTempDeathMarker,limit=1]
kill @e[tag=SGTempDeathMarker]