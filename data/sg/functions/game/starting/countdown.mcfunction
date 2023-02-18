scoreboard players remove $countdown countdown 1
title @a times 5 10 5
execute if score $countdown countdown matches 1..10 run title @a title [{"score":{"name":"$countdown","objective":"countdown"},"color": "white"},{"text": "...","color": "white"}]
#execute if score $countdown countdown matches 1..10 as @a at @s run playsound block.note_block.bit record @s ~ ~ ~ 0.75 1
execute if score $countdown countdown matches 12.. as @a at @s run playsound sg:game.drum record @s ~ ~ ~ 0.25
execute if score $countdown countdown matches ..11 as @a at @s run playsound sg:game.drum record @s ~ ~ ~ 0.15
#execute as @a at @s run playsound sg:game.drum record @s ~ ~ ~ 0.25

execute if score $countdown countdown matches 19 run schedule function sg:game/starting/countdown_music 17t

execute if score $countdown countdown matches 15 as @e[type=marker,tag=aj.timer_survivalgames.root,limit=1] run function timer_survivalgames:animations/animation.model.timer_part_one/pause
execute if score $countdown countdown matches 15 as @e[type=marker,tag=aj.timer_survivalgames.root,limit=1] run function timer_survivalgames:animations/animation.model.timer_part_two/play

execute unless score $countdown countdown matches ..0 run schedule function sg:game/starting/countdown 1s replace
execute if score $countdown countdown matches ..0 run function sg:game/starting/countdown_end