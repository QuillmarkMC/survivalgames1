scoreboard players remove $countdown countdown 1
title @a times 5 10 5
execute if score $countdown countdown matches 1..10 run title @a title [{"score":{"name":"$countdown","objective":"countdown"},"color": "white"},{"text": "...","color": "white"}]
#execute if score $countdown countdown matches 1..10 as @a at @s run playsound block.note_block.basedrum record @s ~ ~ ~ 1 1
execute as @a at @s run playsound sg:game.drum record @s
# scoreboard players operation $countdown_mod countdown = $countdown countdown
# scoreboard players operation $countdown_mod countdown %= $2 countdown
# execute if score $countdown_mod countdown matches 1 run playsound block.note_block.hat record @s ~ ~ ~ 1 0.6
# execute if score $countdown_mod countdown matches 0 unless score $countdown_mod countdown matches 0 run playsound block.note_block.hat record @s ~ ~ ~ 1 0.5
execute if score $countdown countdown matches 19 run schedule function sg:game/starting/countdown_music 17t

execute unless score $countdown countdown matches ..0 run schedule function sg:game/starting/countdown 1s replace
execute if score $countdown countdown matches ..0 run function sg:game/starting/countdown_end