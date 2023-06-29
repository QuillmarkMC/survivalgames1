tp @e[type=armor_stand,tag=SGArena2Player1Spectate,limit=1] @e[type=marker,tag=SGArena2Player1Spawn,limit=1]
tp @e[type=armor_stand,tag=SGArena2Player2Spectate,limit=1] @e[type=marker,tag=SGArena2Player2Spawn,limit=1]
schedule clear sg:lobby/1v1/arena2/spectate/cutscene/frame_advance
schedule function sg:lobby/1v1/arena2/countdown/start 10t