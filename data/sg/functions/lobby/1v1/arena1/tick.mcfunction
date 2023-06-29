#ticks during actual round, not during cutscenes
#surrender detection
execute if entity @a[tag=SG1v1Arena1,scores={surrender=1..},limit=1] run scoreboard players set @a[tag=SG1v1Arena1,scores={surrender=0},limit=1] 1v1Kill 1

#win detection
execute if entity @a[tag=SG1v1Arena1,scores={1v1Kill=1..}] run function sg:lobby/1v1/arena1/end

#leave detection
execute store result score $Num1 math if entity @a[tag=SG1v1Arena1]
execute if score $Num1 math matches 1 run function sg:lobby/1v1/arena1/early_end/disconnect
execute unless score $Num1 math matches 1..2 run function sg:lobby/1v1/arena1/early_end/something_wrong
