#start closing the door to settings far
scoreboard players operation $SettingsFar.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $SettingsFar.Move lobbyDoor 20

function sg:lobby/doors/close/settings_far/repeat