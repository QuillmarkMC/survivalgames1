#ticks during actual round, not during cutscenes
#surrender detection
execute if entity @a[tag=SG1v1Arena1,scores={surrender=1..},limit=1] run scoreboard players set @a[tag=SG1v1Arena1,scores={surrender=0},limit=1] 1v1Kill 1

#leave detection
execute store result score $Num1 math if entity @a[tag=SG1v1Arena1]
execute if score $Num1 math matches 1 run function sg:lobby/1v1/arena1/early_end/disconnect

#win detection (must be placed after leave detection)
execute if entity @a[tag=SG1v1Arena1,scores={1v1Kill=1..}] run function sg:lobby/1v1/arena1/end

#teleport detection
execute if entity @a[tag=SG1v1Arena1,predicate=!sg:lobby/1v1_arena1] run scoreboard players set $Num1 math 0

execute unless score $Num1 math matches 1..2 run function sg:lobby/1v1/arena1/early_end/something_wrong
