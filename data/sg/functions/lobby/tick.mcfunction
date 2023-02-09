##Lobby stuff
effect give @a minecraft:regeneration 999999 255 true
effect give @a minecraft:saturation 999999 255 true
effect give @a minecraft:resistance 999999 255 true
effect give @a minecraft:weakness 999999 255 true

execute as @a if score @s click matches 1.. run function sg:lobby/inventory/click

#check if online player count changed, if so then recalculate team counts (detect leavers)
execute store result score #TempOnlinePlayers teams if entity @a
execute unless score #TempOnlinePlayers teams = $OnlinePlayerCount teams run function sg:lobby/team_select/update_count
scoreboard players operation $OnlinePlayerCount teams = #TempOnlinePlayers teams

#tick team selection enderchest logic
execute at @e[type=marker,tag=TeamSelect] as @a[distance=..8] run function sg:lobby/team_select/check

kill @e[type=item]