#respawn bridge
execute positioned 172 71 1 run place template sg:bridge1_repaired
#spawn target blocks
function sg:game/logic/mines/target/spawn

scoreboard players set $BreakStage caveBridge 0
scoreboard players set $Target1State caveBridge 0
scoreboard players set $Target2State caveBridge 0
scoreboard players set $Target3State caveBridge 0
scoreboard players set $Target4State caveBridge 0