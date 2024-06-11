#start opening the door to south far
scoreboard players operation $ArenaSouthFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $ArenaSouthFar.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbySouthFarDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..10]

function sg:lobby/doors/open/south_far/repeat