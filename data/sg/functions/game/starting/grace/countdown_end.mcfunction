tellraw @a "The grace period has run out! PvP is now enabled!"
execute as @a at @s run playsound entity.ender_dragon.growl record @s ~ ~ ~ 0.75
effect clear @a[tag=SGPlaying] weakness