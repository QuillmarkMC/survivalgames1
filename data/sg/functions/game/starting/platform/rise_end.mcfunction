#close hatch
execute at @a[tag=SGPlaying] run setblock ~ ~ ~ smooth_stone_slab[type=bottom]
#kill platform entities
execute as @e[type=armor_stand,tag=SGPlatform] at @s run tp ~ -100 ~
execute as @e[tag=SGPlatform] run kill @s
#effects
effect clear @a[tag=SGPlaying] levitation
effect give @a[tag=SGPlaying] weakness 999999 100 true
#start countdown
scoreboard players operation $countdown countdown = $game_start_countdown options
function sg:game/starting/countdown