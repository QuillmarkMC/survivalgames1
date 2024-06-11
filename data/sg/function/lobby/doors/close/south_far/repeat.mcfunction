execute as @e[type=armor_stand,tag=lobbyDoorSouthFarMove] at @s run tp ^ ^ ^-0.075
scoreboard players remove $ArenaSouthFar.Move lobbyDoor 1
execute if score $ArenaSouthFar.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/close/south_far/repeat 1t
execute if score $ArenaSouthFar.Move lobbyDoor matches ..0 run scoreboard players operation $ArenaSouthFar.State lobbyDoor = #Closed lobbyDoor
execute if score $ArenaSouthFar.Move lobbyDoor matches ..0 run scoreboard players set $ArenaSouthFar.Move lobbyDoor -1