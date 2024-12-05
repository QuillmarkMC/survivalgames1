execute store result storage sg:timer value int 1.0 run scoreboard players remove $countdown countdown 1
data modify entity @e[type=item_display,tag=SGCountdownTimer,limit=1] item.components.minecraft:custom_model_data set from storage sg:timer value
title @a times 5 10 5
execute if score $countdown countdown matches 1..10 run title @a title [{"score":{"name":"$countdown","objective":"countdown"},"color": "white"},{"text": "...","color": "white"}]
execute if score $StartMusic options matches 1 if score $countdown countdown matches 12.. as @a at @s run playsound sg:game.drum record @s ~ ~ ~ 0.25
execute if score $StartMusic options matches 1 if score $countdown countdown matches ..11 as @a at @s run playsound sg:game.drum record @s ~ ~ ~ 0.15
execute unless score $StartMusic options matches 1 as @a at @s run playsound sg:game.drum record @s ~ ~ ~ 0.25

execute if score $countdown countdown matches 19 run schedule function sg:game/starting/countdown_music 17t

execute unless score $countdown countdown matches ..0 run schedule function sg:game/starting/countdown 1s replace
execute if score $countdown countdown matches ..0 run function sg:game/starting/countdown_end