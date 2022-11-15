#Clear weakness and start grace period
effect clear @a
#start grace period
tellraw @a "The barriers have been dropped! A 30 second grace period has been applied!"
scoreboard players operation $countdown countdown = $grace_period options
function sg:game/starting/grace/countdown

#VFX
summon lightning_bolt -219.5 55 115.5

#Unleash the beasts
execute as @e[tag=SGSpawnMarker,type=marker] at @s positioned ~-1 ~12 ~-1 run fill ~3 ~5 ~3 ~ ~ ~ air replace barrier