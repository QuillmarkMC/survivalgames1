#called from a command block above target block
scoreboard players set $Target1State caveBridge 1
execute positioned 177 98 7 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute positioned 177 98 7 run playsound entity.generic.explode block @a ~ ~ ~ 5 0.75
setblock 174 102 7 stone
#cause dripstone to fall
setblock 177 98 7 air
schedule function sg:game/logic/mines/target/explode/target1/end 40t

execute unless score $Target2State caveBridge matches 1 run schedule function sg:game/logic/mines/target/explode/target2/start 10t