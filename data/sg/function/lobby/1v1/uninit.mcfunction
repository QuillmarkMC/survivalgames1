execute unless score $Arena1State 1v1Var matches 0 run function sg:lobby/1v1/arena1/end
execute unless score $Arena2State 1v1Var matches 0 run function sg:lobby/1v1/arena2/end

function sg:lobby/1v1/markers/kill

function sg:lobby/1v1/arena1/generate/kill_spawns
function sg:lobby/1v1/arena1/generate/cutscene/clear_all_frames
function sg:lobby/1v1/arena1/spectate/kill
schedule clear sg:lobby/1v1/arena1/spectate/cutscene/frame_advance
#schedule clear sg:lobby/1v1/arena1/countdown/tick

function sg:lobby/1v1/arena2/generate/kill_spawns
function sg:lobby/1v1/arena2/generate/cutscene/clear_all_frames
function sg:lobby/1v1/arena2/spectate/kill
schedule clear sg:lobby/1v1/arena2/spectate/cutscene/frame_advance