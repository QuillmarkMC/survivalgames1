execute as @e[type=armor_stand,tag=lobbyDoorTrainingFarMove] at @s run tp ^ ^ ^0.075
scoreboard players remove $TrainingFar.Move lobbyDoor 1
execute if score $TrainingFar.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/open/training_far/repeat 1t
execute if score $TrainingFar.Move lobbyDoor matches ..0 run scoreboard players operation $TrainingFar.State lobbyDoor = #Open lobbyDoor
execute if score $TrainingFar.Move lobbyDoor matches ..0 run scoreboard players set $TrainingFar.Move lobbyDoor -1