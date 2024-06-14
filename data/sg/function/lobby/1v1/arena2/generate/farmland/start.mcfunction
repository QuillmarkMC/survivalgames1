execute positioned -202 0 173 run place template sg:training/farmland
function sg:lobby/1v1/arena2/generate/kill_spawns
summon marker -187.5 15.0 173.5 {Tags:["SGArena2Player1Spawn","SGArena2Spawn"],Rotation:[45.0f,0.0f]}
summon marker -201.5 15.0 187.5 {Tags:["SGArena2Player2Spawn","SGArena2Spawn"],Rotation:[-135.0f,0.0f]}
schedule function sg:lobby/1v1/arena2/generate/cutscene/frame1 2s