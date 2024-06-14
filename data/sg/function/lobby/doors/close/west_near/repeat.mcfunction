execute as @e[type=armor_stand,tag=lobbyDoorWestNearMove] at @s run tp ^ ^ ^-0.075
scoreboard players remove $ArenaWestNear.Move lobbyDoor 1
execute if score $ArenaWestNear.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/close/west_near/repeat 1t
execute if score $ArenaWestNear.Move lobbyDoor matches ..0 run scoreboard players operation $ArenaWestNear.State lobbyDoor = #Closed lobbyDoor
execute if score $ArenaWestNear.Move lobbyDoor matches ..0 run scoreboard players set $ArenaWestNear.Move lobbyDoor -1