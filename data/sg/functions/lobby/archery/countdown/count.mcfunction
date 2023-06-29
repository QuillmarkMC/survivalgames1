#title
title @a[tag=SGArcheryPlayer,limit=1] times 5t 10t 5t
title @a[tag=SGArcheryPlayer,limit=1] subtitle ""
title @a[tag=SGArcheryPlayer,limit=1] title [{"score":{"name":"$Countdown","objective":"archeryVar"},"color": "white"},{"text": "...","color": "white"}]
#playsound
execute as @a[tag=SGArcheryPlayer,limit=1] at @s run playsound minecraft:block.note_block.chime record @s ~ ~ ~
#scoreboard players remove
scoreboard players remove $Countdown archeryVar 1
#if 0, start game
execute if score $Countdown archeryVar matches 1.. run schedule function sg:lobby/archery/countdown/count 1s
execute if score $Countdown archeryVar matches ..0 run schedule function sg:lobby/archery/countdown/end 1s