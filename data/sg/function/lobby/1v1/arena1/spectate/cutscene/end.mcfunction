tp @e[type=armor_stand,tag=SGArena1Player1Spectate,limit=1] @e[type=marker,tag=SGArena1Player1Spawn,limit=1]
tp @e[type=armor_stand,tag=SGArena1Player2Spectate,limit=1] @e[type=marker,tag=SGArena1Player2Spawn,limit=1]
schedule clear sg:lobby/1v1/arena1/spectate/cutscene/frame_advance
schedule function sg:lobby/1v1/arena1/countdown/start 10t