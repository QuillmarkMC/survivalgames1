#start closing the door to train far
scoreboard players operation $TrainFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $TrainFar.Move lobbyDoor 20

function sg:lobby/doors/close/train_far/repeat