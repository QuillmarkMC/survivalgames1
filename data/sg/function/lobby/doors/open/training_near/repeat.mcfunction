execute as @e[type=armor_stand,tag=lobbyDoorTrainingNearMove] at @s run tp ^ ^ ^0.075
scoreboard players remove $TrainingNear.Move lobbyDoor 1
execute if score $TrainingNear.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/open/training_near/repeat 1t
execute if score $TrainingNear.Move lobbyDoor matches ..0 run scoreboard players operation $TrainingNear.State lobbyDoor = #Open lobbyDoor
execute if score $TrainingNear.Move lobbyDoor matches ..0 run scoreboard players set $TrainingNear.Move lobbyDoor -1