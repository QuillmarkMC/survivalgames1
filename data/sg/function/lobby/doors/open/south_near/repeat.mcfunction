execute as @e[type=armor_stand,tag=lobbyDoorSouthNearMove] at @s run tp ^ ^ ^0.075
scoreboard players remove $ArenaSouthNear.Move lobbyDoor 1
execute if score $ArenaSouthNear.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/open/south_near/repeat 1t
execute if score $ArenaSouthNear.Move lobbyDoor matches ..0 run scoreboard players operation $ArenaSouthNear.State lobbyDoor = #Open lobbyDoor
execute if score $ArenaSouthNear.Move lobbyDoor matches ..0 run scoreboard players set $ArenaSouthNear.Move lobbyDoor -1