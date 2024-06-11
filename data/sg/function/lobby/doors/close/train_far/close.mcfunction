#start closing the door to train far
scoreboard players operation $TrainFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $TrainFar.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyTrainFarDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..10]

function sg:lobby/doors/close/train_far/repeat