#start closing the door to train
scoreboard players operation $Train.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $Train.Move lobbyDoor 20

function sg:lobby/doors/close/train_repeat