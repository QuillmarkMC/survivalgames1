#close hatch
execute at @a[tag=SGPlaying] run setblock ~ ~ ~ smooth_stone_slab[type=bottom]
#kill platform entities
execute as @e[type=armor_stand,tag=SGPlatform] at @s run tp ~ -100 ~
schedule function sg:game/starting/platform/delay_kill 2t
#effects
effect clear @a[tag=SGPlaying] levitation
#sound
tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The game will begin in 30 seconds!"}]

execute as @e[type=marker,tag=aj.timer_survivalgames.root,limit=1] run function timer_survivalgames:animations/animation.model.rotating/pause
execute as @e[type=marker,tag=aj.timer_survivalgames.root,limit=1] run function timer_survivalgames:animations/animation.model.timer_part_one/play
#execute as @a at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75
#scoreboard players set $Heartbeat countdown 2
#schedule function sg:game/starting/heartbeat/beat 30t
#start countdown
scoreboard players operation $countdown countdown = $game_start_countdown options
function sg:game/starting/countdown
