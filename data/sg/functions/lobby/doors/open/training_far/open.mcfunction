#start opening the door to training far
scoreboard players operation $TrainingFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $TrainingFar.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyTrainingFarDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..15]

function sg:lobby/doors/open/training_far/repeat