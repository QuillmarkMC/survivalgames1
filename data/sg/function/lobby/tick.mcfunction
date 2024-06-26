#effects
execute as @a[scores={hunger=..19}] run effect give @s saturation 1 0 true

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

#check if a player left the arena without dying
execute as @a[tag=SGArenaFighter,predicate=!sg:lobby/arena_deserter] unless score @s death matches 1.. run function sg:lobby/arena/deserter

#check if player entered arena
execute as @a[tag=!SGArenaFighter,predicate=sg:lobby/arena,gamemode=!spectator] run function sg:lobby/arena/enter

#respawn dead players (place anytime after arena entrance check)
execute as @a[predicate=sg:lobby/death_box,gamemode=adventure] run function sg:lobby/death/failsafe
execute as @a[scores={death=1..}] run function sg:lobby/death/death
execute as @a[scores={lobbyArenaRespawn=0..}] run function sg:lobby/death/delay_respawn

#arena suicide
execute as @a[scores={go_to_sleep=1..}] run kill @s

#tick archery minigame
function sg:lobby/archery/tick
#tick 1v1 minigame
function sg:lobby/1v1/tick

#admin teleporter cooldown
execute as @a[scores={adminTeleportCooldown=1..}] run scoreboard players remove @s adminTeleportCooldown 1

#delay summoning entities on reload
execute unless score $EntityLoad lobbyVar matches 1 if score $EntityLoadTimer lobbyVar matches 200.. run function sg:lobby/markers/delayed_load
execute unless score $EntityLoad lobbyVar matches 1 run scoreboard players add $EntityLoadTimer lobbyVar 1
#execute unless score $EntityLoad lobbyVar matches 1 if entity @a run function sg:lobby/markers/delayed_load
execute unless score $EntityLoad lobbyVar matches 1 unless score $EntityLoadTimer lobbyVar matches 140.. if entity @a run scoreboard players set $EntityLoadTimer lobbyVar 140

execute as @a[gamemode=adventure,predicate=!sg:lobby/in_bounds] run tp @s @e[type=marker,tag=SGLobbySpawnPosition,limit=1,sort=random]

#map arrow rotation
execute as @e[type=item_display,tag=SGLobbyMapArrow] at @s run tp @s ~ ~ ~ ~3 ~

kill @e[type=item]