scoreboard players set $Arena2State 1v1Var 2

gamemode adventure @a[tag=SG1v1Arena2,limit=2]
execute as @e[type=armor_stand,tag=SGArena2Player1Spectate,limit=1] at @s run tp @s ~ ~-1 ~ ~ ~
execute as @e[type=armor_stand,tag=SGArena2Player2Spectate,limit=1] at @s run tp @s ~ ~-1 ~ ~ ~

function sg:lobby/1v1/arena2/countdown/tick

scoreboard players set $Arena2Countdown 1v1Var 3
function sg:lobby/1v1/arena2/countdown/count

#show bossbar
bossbar set 1v1arena2 players @a[tag=SG1v1Arena2,limit=2]
