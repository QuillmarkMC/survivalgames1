#start closing the door to arena far
scoreboard players operation $ArenaFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $ArenaFar.Move lobbyDoor 20

function sg:lobby/doors/close/arena_far/repeat