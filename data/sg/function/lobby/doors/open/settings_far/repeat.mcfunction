execute as @e[type=armor_stand,tag=lobbyDoorSettingsFarMove] at @s run tp ^ ^ ^0.075
scoreboard players remove $SettingsFar.Move lobbyDoor 1
execute if score $SettingsFar.Move lobbyDoor matches 1.. run schedule function sg:lobby/doors/open/settings_far/repeat 1t
execute if score $SettingsFar.Move lobbyDoor matches ..0 run scoreboard players operation $SettingsFar.State lobbyDoor = #Open lobbyDoor
execute if score $SettingsFar.Move lobbyDoor matches ..0 run scoreboard players set $SettingsFar.Move lobbyDoor -1