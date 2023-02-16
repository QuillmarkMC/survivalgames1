#effects
execute as @a[predicate=!sg:lobby/arena] run effect give @s minecraft:regeneration 999999 255 true
execute as @a[predicate=!sg:lobby/arena] run effect give @s minecraft:resistance 999999 255 true
execute as @a[predicate=!sg:lobby/arena] run effect give @s minecraft:weakness 999999 255 true

execute as @a if score @s click matches 1.. run function sg:lobby/inventory/click

#triggers
execute as @a[scores={lobbySigns=1..}] run function sg:lobby/triggers/signs
scoreboard players enable @a lobbySigns

#check if online player count changed, if so then recalculate team counts (detect leavers)
execute store result score #TempOnlinePlayers teams if entity @a
execute unless score #TempOnlinePlayers teams = $OnlinePlayerCount teams run function sg:lobby/team_select/update_count
scoreboard players operation $OnlinePlayerCount teams = #TempOnlinePlayers teams

#unlock settings if admins dc
execute if score $Locked lobbySigns matches 1 unless entity @a[tag=Admin] run function sg:lobby/settings/actions/unlock/auto

#tick team selection enderchest logic
execute at @e[type=marker,tag=TeamSelect] as @a[distance=..8] run function sg:lobby/team_select/check

#check door zones
function sg:lobby/doors/tick

#respawn dead players
execute as @a[scores={death=1..}] run function sg:lobby/arena/death

#check if a player left the arena without dying
execute as @a[tag=SGArenaFighter,predicate=!sg:lobby/arena] run function sg:lobby/arena/deserter

#check if player entered arena
execute as @a[tag=!SGArenaFighter,predicate=sg:lobby/arena] run function sg:lobby/arena/enter

kill @e[type=item]