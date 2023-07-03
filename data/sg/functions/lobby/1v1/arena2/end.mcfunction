#determine winner
tag @a[tag=SG1v1Arena2,scores={1v1Kill=1..},limit=1] add 1v1Winner
#add to win streak
scoreboard players add @a[tag=1v1Winner,limit=1] 1v1Killstreak 1
tellraw @a[tag=1v1Winner,limit=1] [{"text": ""},{"text":"[!] ","color":"gray","bold": true},{"text":"You are on a 1v1 win streak of "},{"score":{"name":"@a[tag=1v1Winner,limit=1]","objective":"1v1Killstreak"},"color": "yellow"},{"text": "!","color": "yellow"}]
execute as @a[tag=1v1Winner,limit=1] if score @s 1v1Killstreak > @s 1v1Highscore run function sg:lobby/1v1/scores/personal_best
#reset win streak for loser
scoreboard players reset @a[tag=SG1v1Arena2,tag=!1v1Winner] 1v1Killstreak

#inventory
scoreboard players operation @a[tag=SG1v1Arena2,limit=2] inventoryState = $Lobby.Default inventoryState
advancement grant @a[tag=SG1v1Arena2,limit=2] only sg:inv_changed

tp @a[tag=SG1v1Player1Arena2,limit=1] -211.0 15.0 162.0 0.0 5.0
tp @a[tag=SG1v1Player2Arena2,limit=1] -211.0 15.0 175.0 180.0 5.0
execute as @a[tag=SG1v1Arena1,limit=2] at @s run playsound entity.experience_orb.pickup record @s ~ ~ ~ 1 2

bossbar set 1v1arena2 players
scoreboard players set $Arena2State 1v1Var 0
scoreboard players add $ArenaAvailable 1v1Var 2
scoreboard players reset * 1v1Kill
scoreboard players reset * surrender
execute as @a[tag=SG1v1Arena2,limit=2] run function sg:lobby/effects/give

#remove tags
tag @a[tag=SG1v1Player1Arena2,limit=1] remove SG1v1Player1Arena2
tag @a[tag=SG1v1Player2Arena2,limit=1] remove SG1v1Player2Arena2
tag @a[tag=SG1v1Arena2,limit=2] remove SG1v1Arena2
tag @a[tag=1v1Winner,limit=1] remove 1v1Winner

execute if score $NextPosition 1v1QueuePosition matches 2.. run function sg:lobby/1v1/queue/advance