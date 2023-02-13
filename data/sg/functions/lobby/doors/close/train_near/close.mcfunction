#start closing the door to train near
scoreboard players operation $TrainNear.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $TrainNear.Move lobbyDoor 20

function sg:lobby/doors/close/train_near/repeat