#pvp begins
scoreboard players set $Arena1State 1v1Var 3
scoreboard players enable @a[tag=SG1v1Arena1,limit=2] surrender
#schedule clear sg:lobby/1v1/arena1/countdown/tick

title @a[tag=SG1v1Arena1,limit=2] times 5t 20t 10t
title @a[tag=SG1v1Arena1,limit=2] subtitle ""
title @a[tag=SG1v1Arena1,limit=2] title [{"text": "Begin!","color": "green"}]

ride @a[tag=SG1v1Player1Arena1,limit=1] dismount
ride @a[tag=SG1v1Player2Arena1,limit=1] dismount