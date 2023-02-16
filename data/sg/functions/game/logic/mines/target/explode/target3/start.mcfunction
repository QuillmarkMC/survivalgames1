#called from a command block above target block
scoreboard players set $Target3State caveBridge 1
execute positioned 177 104 15 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute positioned 177 104 15 run playsound entity.generic.explode block @a ~ ~ ~ 5 0.75
setblock 176 105 16 stone
#cause dripstone to fall
setblock 177 104 15 air
schedule function sg:game/logic/mines/target/explode/target3/end 45t

execute unless score $Target2State caveBridge matches 1 run schedule function sg:game/logic/mines/target/explode/target2/start 10t
execute unless score $Target4State caveBridge matches 1 run schedule function sg:game/logic/mines/target/explode/target4/start 10t