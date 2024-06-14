#start opening the door to train near
scoreboard players operation $TrainNear.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $TrainNear.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyTrainNearDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..10]

function sg:lobby/doors/open/train_near/repeat