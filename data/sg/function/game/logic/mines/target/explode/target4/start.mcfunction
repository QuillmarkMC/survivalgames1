#called from a command block above target block
scoreboard players set $Target4State caveBridge 1
execute positioned 177 99 25 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute positioned 177 99 25 run playsound entity.generic.explode block @a ~ ~ ~ 5 0.75
setblock 176 100 26 stone
#cause dripstone to fall
setblock 177 99 25 air
schedule function sg:game/logic/mines/target/explode/target4/end 45t

execute unless score $Target3State caveBridge matches 1 run schedule function sg:game/logic/mines/target/explode/target3/start 10t