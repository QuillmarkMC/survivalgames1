#start closing the door to training near
scoreboard players operation $TrainingNear.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $TrainingNear.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyTrainingNearDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..15]

function sg:lobby/doors/close/training_near/repeat