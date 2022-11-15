execute if score $countdown countdown matches 1..5 run tellraw @a [{"score":{"name":"$countdown","objective":"countdown"},"color": "white"},{"text": "...","color": "white"}]
scoreboard players operation $countdown_mod countdown = $countdown countdown
scoreboard players operation $countdown_mod countdown %= $2 countdown
execute if score $countdown_mod countdown matches 0 as @a at @s run playsound block.note_block.hat record @s ~ ~ ~ 1 0.6
execute if score $countdown_mod countdown matches 1 unless score $countdown countdown matches 0 as @a at @s run playsound block.note_block.hat record @s ~ ~ ~ 1 0.5

scoreboard players remove $countdown countdown 1
execute if score $countdown countdown matches 1.. run schedule function sg:lobby/countdown 1s replace
execute if score $countdown countdown matches 0 run function sg:game/starting/countdown_start