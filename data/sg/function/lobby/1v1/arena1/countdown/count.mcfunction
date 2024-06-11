title @a[tag=SG1v1Arena1,limit=2] times 5t 10t 5t
title @a[tag=SG1v1Arena1,limit=2] subtitle ""
title @a[tag=SG1v1Arena1,limit=2] title [{"score":{"name":"$Arena1Countdown","objective":"1v1Var"},"color": "white"},{"text": "...","color": "white"}]
execute as @a[tag=SG1v1Arena1,limit=2] at @s run playsound minecraft:block.note_block.chime record @s ~ ~ ~

scoreboard players remove $Arena1Countdown 1v1Var 1
execute unless score $Arena1Countdown 1v1Var matches ..0 run schedule function sg:lobby/1v1/arena1/countdown/count 1s
execute if score $Arena1Countdown 1v1Var matches ..0 run schedule function sg:lobby/1v1/arena1/countdown/end 1s