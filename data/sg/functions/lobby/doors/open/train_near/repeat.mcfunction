execute as @e[type=armor_stand,tag=lobbyDoorTrainNearMove] at @s run tp ^ ^ ^0.075
scoreboard players remove $TrainNear.Move lobbyDoor 1
execute if score $TrainNear.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/open/train_near/repeat 1t
execute if score $TrainNear.Move lobbyDoor matches ..0 run scoreboard players operation $TrainNear.State lobbyDoor = #Open lobbyDoor
execute if score $TrainNear.Move lobbyDoor matches ..0 run scoreboard players set $TrainNear.Move lobbyDoor -1