#train open
execute unless score $Train.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainDoorMarker] if entity @a[gamemode=!spectator,distance=..2.5] if score $Train.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/train
#train close
execute unless score $Train.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainDoorMarker] unless entity @a[gamemode=!spectator,distance=..2.5] if score $Train.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/train
