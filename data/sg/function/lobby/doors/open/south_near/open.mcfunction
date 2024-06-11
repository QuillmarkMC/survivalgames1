#start opening the door to south near
scoreboard players operation $ArenaSouthNear.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $ArenaSouthNear.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbySouthNearDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..10]

function sg:lobby/doors/open/south_near/repeat