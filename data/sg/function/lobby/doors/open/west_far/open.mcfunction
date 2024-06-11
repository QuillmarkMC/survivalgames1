#start opening the door to west far
scoreboard players operation $ArenaWestFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $ArenaWestFar.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyWestFarDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..10]

function sg:lobby/doors/open/west_far/repeat