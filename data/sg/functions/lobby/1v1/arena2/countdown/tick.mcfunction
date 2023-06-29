ride @a[tag=SG1v1Player1Arena2,limit=1] mount @e[type=armor_stand,tag=SGArena2Player1Spectate,limit=1]
ride @a[tag=SG1v1Player2Arena2,limit=1] mount @e[type=armor_stand,tag=SGArena2Player2Spectate,limit=1]
#execute if score $Arena2State 1v1Var matches 2 run schedule function sg:lobby/1v1/arena2/countdown/tick 1t