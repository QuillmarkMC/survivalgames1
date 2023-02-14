#start closing the door to arena far
scoreboard players operation $ArenaFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $ArenaFar.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyArenaFarDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..15]

function sg:lobby/doors/close/arena_far/repeat