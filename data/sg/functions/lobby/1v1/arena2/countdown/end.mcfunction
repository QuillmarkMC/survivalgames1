#pvp begins
scoreboard players set $Arena2State 1v1Var 3
scoreboard players enable @a[tag=SG1v1Arena2,limit=2] surrender
#schedule clear sg:lobby/1v1/arena2/countdown/tick

title @a[tag=SG1v1Arena2,limit=2] times 5t 20t 10t
title @a[tag=SG1v1Arena2,limit=2] subtitle ""
title @a[tag=SG1v1Arena2,limit=2] title [{"translate": "text.lobby.1v1.begin","color": "green"}]

ride @a[tag=SG1v1Player1Arena2,limit=1] dismount
ride @a[tag=SG1v1Player2Arena2,limit=1] dismount

function sg:lobby/1v1/arena2/timer/update