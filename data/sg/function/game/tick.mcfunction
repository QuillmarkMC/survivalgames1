#Death check
execute as @a[scores={deathDelayTimer=0}] run function sg:game/logic/death/location
execute as @a[scores={deathDelayTimer=1..}] run scoreboard players remove @s deathDelayTimer 1
execute as @a[scores={death=1..}] run function sg:game/logic/death/death

#check win condition when players dc
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
execute unless score $CurrentPlayers win = $ExpectedPlayers win run function sg:game/logic/check_win/check

#tick combat timers
execute as @a[scores={combatTimer=1..}] run scoreboard players remove @s combatTimer 1

#out of bounds
execute as @a[tag=SGPlaying,gamemode=!spectator] run function sg:game/logic/out_of_bounds/check

#temple warning
execute as @a[scores={openChest=1..}] run function sg:game/logic/temple/flood/check
execute if entity @a[predicate=sg:temple/lava_room,gamemode=adventure] if score $FloodState temple matches 0 run function sg:game/logic/temple/flood/schedule

#check mine collapsing bridge
function sg:game/logic/mines/tick

#prevent dead players from being respawned
execute as @a[tag=SGDeadPlayer,gamemode=adventure,tag=!Bypass_Safety] run function sg:general/safety/respawn

#rotate countdown timer
execute if score $CountdownTimerActivated timers matches 1.. as @e[type=item_display,tag=SGCountdownTimer,limit=1] at @s run rotate @s ~3.5 ~