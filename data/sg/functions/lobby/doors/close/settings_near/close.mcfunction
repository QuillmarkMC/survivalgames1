#start closing the door to settings near
scoreboard players operation $SettingsNear.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $SettingsNear.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbySettingsNearDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..10]

function sg:lobby/doors/close/settings_near/repeat