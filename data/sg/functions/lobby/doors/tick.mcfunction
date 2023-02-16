#train near open
execute unless score $TrainNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainNearDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $TrainNear.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/train_near/open
#train near close
execute unless score $TrainNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainNearDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $TrainNear.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/train_near/close

#train far open
execute unless score $TrainFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainFarDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $TrainFar.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/train_far/open
#train far close
execute unless score $TrainFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainFarDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $TrainFar.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/train_far/close

#training near open
execute unless score $TrainingNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainingNearDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $TrainingNear.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/training_near/open
#training near close
execute unless score $TrainingNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainingNearDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $TrainingNear.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/training_near/close

#training far open
execute unless score $TrainingFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainingFarDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $TrainingFar.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/training_far/open
#training far close
execute unless score $TrainingFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyTrainingFarDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $TrainingFar.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/training_far/close

#arena near open
execute unless score $ArenaNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyArenaNearDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $ArenaNear.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/arena_near/open
#arena near close
execute unless score $ArenaNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyArenaNearDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $ArenaNear.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/arena_near/close

#arena far open
execute unless score $ArenaFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyArenaFarDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $ArenaFar.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/arena_far/open
#arena far close
execute unless score $ArenaFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyArenaFarDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $ArenaFar.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/arena_far/close

#settings near open
execute unless score $SettingsNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbySettingsNearDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $SettingsNear.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/settings_near/open
#settings near close
execute unless score $SettingsNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbySettingsNearDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $SettingsNear.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/settings_near/close

#settings far open
execute unless score $SettingsFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbySettingsFarDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $SettingsFar.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/settings_far/open
#settings far close
execute unless score $SettingsFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbySettingsFarDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $SettingsFar.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/settings_far/close


#arena recovery rooms
#west far open
execute unless score $ArenaWestFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyWestFarDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $ArenaWestFar.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/west_far/open
#west far close
execute unless score $ArenaWestFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyWestFarDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $ArenaWestFar.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/west_far/close

#west near open
execute unless score $ArenaWestNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyWestNearDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $ArenaWestNear.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/west_near/open
#west near close
execute unless score $ArenaWestNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyWestNearDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $ArenaWestNear.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/west_near/close

#north near open
execute unless score $ArenaNorthNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyNorthNearDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $ArenaNorthNear.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/north_near/open
#north near close
execute unless score $ArenaNorthNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyNorthNearDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $ArenaNorthNear.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/north_near/close

#north far open
execute unless score $ArenaNorthFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyNorthFarDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $ArenaNorthFar.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/north_far/open
#north far close
execute unless score $ArenaNorthFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbyNorthFarDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $ArenaNorthFar.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/north_far/close

#south near open
execute unless score $ArenaSouthNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbySouthNearDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $ArenaSouthNear.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/south_near/open
#south near close
execute unless score $ArenaSouthNear.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbySouthNearDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $ArenaSouthNear.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/south_near/close

#south far open
execute unless score $ArenaSouthFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbySouthFarDoorMarker] if entity @a[gamemode=!spectator,distance=..3] if score $ArenaSouthFar.State lobbyDoor = #Closed lobbyDoor run function sg:lobby/doors/open/south_far/open
#south far close
execute unless score $ArenaSouthFar.State lobbyDoor = #Locked lobbyDoor at @e[type=marker,tag=lobbySouthFarDoorMarker] unless entity @a[gamemode=!spectator,distance=..3] if score $ArenaSouthFar.State lobbyDoor = #Open lobbyDoor run function sg:lobby/doors/close/south_far/close