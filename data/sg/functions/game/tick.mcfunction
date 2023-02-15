#Death check
execute as @a if score @s death matches 1.. run function sg:game/logic/death/death
execute as @a if score @s death matches 1.. run scoreboard players set @s death 0

#check win condition when players dc
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=adventure]
execute unless score $CurrentPlayers win = $ExpectedPlayers win run function sg:game/logic/check_for_win

#tick combat timers
execute as @a[scores={combatTimer=1..}] run scoreboard players remove @s combatTimer 1

#out of bounds
execute as @a[tag=SGPlaying,gamemode=adventure] run function sg:game/logic/out_of_bounds/check

#temple warning
execute as @a[scores={openChest=1..}] run function sg:game/logic/temple/flood/check
execute if entity @a[predicate=sg:temple/lava_room,gamemode=adventure] if score $FloodState temple matches 0 run function sg:game/logic/temple/flood/schedule