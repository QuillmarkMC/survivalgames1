#start opening the door to train far
scoreboard players operation $TrainFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $TrainFar.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyTrainFarDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..15]

function sg:lobby/doors/open/train_far/repeat