#start opening the door to west near
scoreboard players operation $ArenaWestNear.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $ArenaWestNear.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyWestNearDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..10]

function sg:lobby/doors/open/west_near/repeat