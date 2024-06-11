execute as @e[type=armor_stand,tag=lobbyDoorSettingsNearMove] at @s run tp ^ ^ ^-0.075
scoreboard players remove $SettingsNear.Move lobbyDoor 1
execute if score $SettingsNear.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/close/settings_near/repeat 1t
execute if score $SettingsNear.Move lobbyDoor matches ..0 run scoreboard players operation $SettingsNear.State lobbyDoor = #Closed lobbyDoor
execute if score $SettingsNear.Move lobbyDoor matches ..0 run scoreboard players set $SettingsNear.Move lobbyDoor -1