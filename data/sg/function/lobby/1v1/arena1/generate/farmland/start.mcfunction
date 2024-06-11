execute positioned -202 0 149 run place template sg:training/farmland
function sg:lobby/1v1/arena1/generate/kill_spawns
summon marker -187.5 15.0 149.5 {Tags:["SGArena1Player1Spawn","SGArena1Spawn"],Rotation:[45.0f,0.0f]}
summon marker -201.5 15.0 163.5 {Tags:["SGArena1Player2Spawn","SGArena1Spawn"],Rotation:[-135.0f,0.0f]}
schedule function sg:lobby/1v1/arena1/generate/cutscene/frame1 2s