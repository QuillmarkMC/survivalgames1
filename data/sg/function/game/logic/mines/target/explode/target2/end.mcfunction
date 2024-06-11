setblock 181 73 8 air
execute positioned 181 73 8 run playsound entity.zombie.break_wooden_door block @a ~ ~ ~ 2
scoreboard players add $BreakStage caveBridge 1

#start full bridge break
execute if score $BreakStage caveBridge matches 4.. run function sg:game/logic/mines/bridge/break