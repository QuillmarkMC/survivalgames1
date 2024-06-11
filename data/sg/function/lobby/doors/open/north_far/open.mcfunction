#start opening the door to north far
scoreboard players operation $ArenaNorthFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $ArenaNorthFar.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyNorthFarDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..10]

function sg:lobby/doors/open/north_far/repeat