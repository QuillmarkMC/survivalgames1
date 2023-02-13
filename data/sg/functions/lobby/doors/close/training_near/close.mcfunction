#start closing the door to training near
scoreboard players operation $TrainingNear.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $TrainingNear.Move lobbyDoor 20

function sg:lobby/doors/close/training_near/repeat