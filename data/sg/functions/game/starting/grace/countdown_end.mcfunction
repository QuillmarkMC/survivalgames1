tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The grace period has expired! PvP is now enabled!"}]
execute as @a at @s run playsound entity.ender_dragon.growl record @s ~ ~ ~ 0.75
effect clear @a[tag=SGPlaying] weakness