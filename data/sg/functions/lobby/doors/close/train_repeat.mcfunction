execute as @e[type=armor_stand,tag=lobbyDoorTrainMove] at @s run tp ^ ^ ^-0.075
scoreboard players remove $Train.Move lobbyDoor 1
execute if score $Train.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/close/train_repeat 1t
execute if score $Train.Move lobbyDoor matches ..0 run scoreboard players operation $Train.State lobbyDoor = #Closed lobbyDoor
execute if score $Train.Move lobbyDoor matches ..0 run scoreboard players set $Train.Move lobbyDoor -1