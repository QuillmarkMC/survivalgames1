#start opening the door to north near
scoreboard players operation $ArenaNorthNear.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $ArenaNorthNear.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyNorthNearDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..10]

function sg:lobby/doors/open/north_near/repeat