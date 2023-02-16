execute as @e[type=armor_stand,tag=lobbyDoorNorthNearMove] at @s run tp ^ ^ ^0.075
scoreboard players remove $ArenaNorthNear.Move lobbyDoor 1
execute if score $ArenaNorthNear.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/open/north_near/repeat 1t
execute if score $ArenaNorthNear.Move lobbyDoor matches ..0 run scoreboard players operation $ArenaNorthNear.State lobbyDoor = #Open lobbyDoor
execute if score $ArenaNorthNear.Move lobbyDoor matches ..0 run scoreboard players set $ArenaNorthNear.Move lobbyDoor -1