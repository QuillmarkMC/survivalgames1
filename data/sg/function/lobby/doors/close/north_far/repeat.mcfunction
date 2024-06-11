execute as @e[type=armor_stand,tag=lobbyDoorNorthFarMove] at @s run tp ^ ^ ^-0.075
scoreboard players remove $ArenaNorthFar.Move lobbyDoor 1
execute if score $ArenaNorthFar.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/close/north_far/repeat 1t
execute if score $ArenaNorthFar.Move lobbyDoor matches ..0 run scoreboard players operation $ArenaNorthFar.State lobbyDoor = #Closed lobbyDoor
execute if score $ArenaNorthFar.Move lobbyDoor matches ..0 run scoreboard players set $ArenaNorthFar.Move lobbyDoor -1