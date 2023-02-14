#start closing the door to settings near
scoreboard players operation $SettingsNear.State lobbyDoor = #Locked lobbyDoor
scoreboard players set $SettingsNear.Move lobbyDoor 20

function sg:lobby/doors/close/settings_near/repeat