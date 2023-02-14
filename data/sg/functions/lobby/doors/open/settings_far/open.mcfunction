#start opening the door to settings far
scoreboard players operation $SettingsFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $SettingsFar.Move lobbyDoor 20
execute at @e[type=marker,tag=lobbySettingsFarDoorMarker,limit=1] run playsound sg:game.door.move record @a[distance=..10]

function sg:lobby/doors/open/settings_far/repeat