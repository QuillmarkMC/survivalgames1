#train near open
execute unless score $TrainNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainNearDoorMarker] if entity @a[gamemode=!spectator,distance=..3.5] if score $TrainNear.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/train_near/open
#train near close
execute unless score $TrainNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainNearDoorMarker] unless entity @a[gamemode=!spectator,distance=..3.5] if score $TrainNear.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/train_near/close

#train far open
execute unless score $TrainFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainFarDoorMarker] if entity @a[gamemode=!spectator,distance=..3.5] if score $TrainFar.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/train_far/open
#train far close
execute unless score $TrainFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainFarDoorMarker] unless entity @a[gamemode=!spectator,distance=..3.5] if score $TrainFar.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/train_far/close
