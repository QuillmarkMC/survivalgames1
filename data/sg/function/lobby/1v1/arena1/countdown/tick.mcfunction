ride @a[tag=SG1v1Player1Arena1,limit=1] mount @e[type=armor_stand,tag=SGArena1Player1Spectate,limit=1]
ride @a[tag=SG1v1Player2Arena1,limit=1] mount @e[type=armor_stand,tag=SGArena1Player2Spectate,limit=1]
#execute if score $Arena1State 1v1Var matches 2 run schedule function sg:lobby/1v1/arena1/countdown/tick 1t