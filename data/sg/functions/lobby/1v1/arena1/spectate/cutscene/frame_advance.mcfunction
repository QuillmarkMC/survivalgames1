execute as @e[type=armor_stand,tag=SGArena1Player1Spectate,limit=1] at @s facing entity @e[type=marker,tag=SGArena1Player1Spawn,limit=1] feet positioned ^ ^ ^0.7778 run tp @s ~ ~ ~ facing entity @e[type=marker,tag=SG1v1Arena1Center,limit=1]
execute as @e[type=armor_stand,tag=SGArena1Player2Spectate,limit=1] at @s facing entity @e[type=marker,tag=SGArena1Player2Spawn,limit=1] feet positioned ^ ^ ^0.7778 run tp @s ~ ~ ~ facing entity @e[type=marker,tag=SG1v1Arena1Center,limit=1]
scoreboard players add $1v1Arena1CameraFrame 1v1Var 1
execute unless score $1v1Arena1CameraFrame 1v1Var matches 20.. run schedule function sg:lobby/1v1/arena1/spectate/cutscene/frame_advance 1t
execute if score $1v1Arena1CameraFrame 1v1Var matches 20.. run function sg:lobby/1v1/arena1/spectate/cutscene/end