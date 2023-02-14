#start closing the door to settings far
scoreboard players operation $SettingsFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $SettingsFar.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbySettingsFarDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..15]

function sg:lobby/doors/close/settings_far/repeat