#force fix player positions
execute as @a[tag=SGPlaying] at @s run tp ~ 46.5 ~
#close hatch
execute at @a[tag=SGPlaying] run setblock ~ ~ ~ smooth_stone_slab[type=bottom]
#kill platform entities
execute as @e[type=armor_stand,tag=SGPlatform] at @s run tp ~ -100 ~
schedule function sg:game/starting/platform/delay_kill 2t
#effects
effect clear @a[tag=SGPlaying] levitation
#sound
tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The game will begin in 15 seconds!"}]

#execute as @a at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75
#scoreboard players set $Heartbeat countdown 2
#schedule function sg:game/starting/heartbeat/beat 30t

#start countdown
schedule function sg:game/starting/final_countdown_schedule 2s