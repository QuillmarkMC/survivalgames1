tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.pvp_grace.end"}]
execute as @a at @s run playsound entity.ender_dragon.growl record @s ~ ~ ~ 0.75
effect clear @a[tag=SGPlaying] weakness
effect clear @a[tag=SGPlaying] resistance
effect clear @a[tag=SGPlaying] regeneration