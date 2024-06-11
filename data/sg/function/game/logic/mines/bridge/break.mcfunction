#start the break animation
kill @e[type=marker,tag=SGBreakBridge]
summon marker 172 71 15 {Tags:["SGBreakBridge"],Rotation:[180.0f,0.0f]}
summon marker 172 71 16 {Tags:["SGBreakBridge"],Rotation:[0.0f,0.0f]}
scoreboard players set $BreakTime caveBridge 14
function sg:game/logic/mines/bridge/loop