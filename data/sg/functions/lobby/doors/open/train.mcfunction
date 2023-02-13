#start opening the door to train
scoreboard players operation $Train.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $Train.Move lobbyDoor 20

function sg:lobby/doors/open/train_repeat