#called from a command block above target block
scoreboard players set $Target2State caveBridge 1
execute positioned 181 98 8 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute positioned 181 98 8 run playsound entity.generic.explode block @a ~ ~ ~ 5 0.75
setblock 180 98 9 air
#cause dripstone to fall
setblock 181 98 8 air
schedule function sg:game/logic/mines/target/explode/target2/end 40t

execute unless score $Target1State caveBridge matches 1 run schedule function sg:game/logic/mines/target/explode/target1/start 10t
execute unless score $Target3State caveBridge matches 1 run schedule function sg:game/logic/mines/target/explode/target3/start 10t