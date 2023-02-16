function sg:lobby/doors/summon
#reset open/close variables
scoreboard players set #Closed lobbyDoor 0
scoreboard players set #Open lobbyDoor 1
scoreboard players set #Locked lobbyDoor 2

scoreboard players set $TrainNear.Move lobbyDoor -1
scoreboard players operation $TrainNear.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $ArenaNear.Move lobbyDoor -1
scoreboard players operation $ArenaNear.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $SettingsNear.Move lobbyDoor -1
scoreboard players operation $SettingsNear.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $TrainingNear.Move lobbyDoor -1
scoreboard players operation $TrainingNear.State lobbyDoor = #Closed lobbyDoor

scoreboard players set $TrainFar.Move lobbyDoor -1
scoreboard players operation $TrainFar.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $ArenaFar.Move lobbyDoor -1
scoreboard players operation $ArenaFar.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $SettingsFar.Move lobbyDoor -1
scoreboard players operation $SettingsFar.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $TrainingFar.Move lobbyDoor -1
scoreboard players operation $TrainingFar.State lobbyDoor = #Closed lobbyDoor

#arena recovery doors
scoreboard players set $ArenaNorthNear.Move lobbyDoor -1
scoreboard players operation $ArenaNorthNear.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $ArenaNorthFar.Move lobbyDoor -1
scoreboard players operation $ArenaNorthFar.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $ArenaSouthNear.Move lobbyDoor -1
scoreboard players operation $ArenaSouthNear.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $ArenaSouthFar.Move lobbyDoor -1
scoreboard players operation $ArenaSouthFar.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $ArenaWestNear.Move lobbyDoor -1
scoreboard players operation $ArenaWestNear.State lobbyDoor = #Closed lobbyDoor
scoreboard players set $ArenaWestFar.Move lobbyDoor -1
scoreboard players operation $ArenaWestFar.State lobbyDoor = #Closed lobbyDoor