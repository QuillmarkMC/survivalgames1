#start closing the door to arena near
scoreboard players operation $ArenaNear.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $ArenaNear.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbyArenaNearDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..15]

function sg:lobby/doors/close/arena_near/repeat