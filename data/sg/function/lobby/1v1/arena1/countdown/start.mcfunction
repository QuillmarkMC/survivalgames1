scoreboard players set $Arena1State 1v1Var 2

gamemode adventure @a[tag=SG1v1Arena1,limit=2]
execute as @e[type=armor_stand,tag=SGArena1Player1Spectate,limit=1] at @s run tp @s ~ ~-1 ~ ~ ~
execute as @e[type=armor_stand,tag=SGArena1Player2Spectate,limit=1] at @s run tp @s ~ ~-1 ~ ~ ~

function sg:lobby/1v1/arena1/countdown/tick

scoreboard players set $Arena1Countdown 1v1Var 3
function sg:lobby/1v1/arena1/countdown/count

#show bossbar
bossbar set 1v1arena1 players @a[tag=SG1v1Arena1,limit=2]
