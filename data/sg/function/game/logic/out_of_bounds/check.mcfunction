scoreboard players set $CheckPlayer oob 0
execute if entity @s[predicate=sg:out_of_bounds/cornucopia] run scoreboard players set $CheckPlayer oob 1

execute if score $CheckPlayer oob matches 1 if entity @s[tag=!OOB] run function sg:game/logic/out_of_bounds/start_player
execute if score $CheckPlayer oob matches 0 if entity @s[tag=OOB] run function sg:game/logic/out_of_bounds/end_player

execute if entity @s[tag=OOB] run function sg:game/logic/out_of_bounds/tick