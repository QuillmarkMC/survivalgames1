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
