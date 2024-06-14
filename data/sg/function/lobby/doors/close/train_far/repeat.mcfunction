execute as @e[type=armor_stand,tag=lobbyDoorTrainFarMove] at @s run tp ^ ^ ^-0.075
scoreboard players remove $TrainFar.Move lobbyDoor 1
execute if score $TrainFar.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/close/train_far/repeat 1t
execute if score $TrainFar.Move lobbyDoor matches ..0 run scoreboard players operation $TrainFar.State lobbyDoor = #Closed lobbyDoor
execute if score $TrainFar.Move lobbyDoor matches ..0 run scoreboard players set $TrainFar.Move lobbyDoor -1