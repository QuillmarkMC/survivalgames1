tellraw @a[tag=SG1v1Arena2,limit=1] [{"text": ""},{"text":"[!] ","color":"gray","bold": true},{"translate":"text.lobby.1v1.end.disconnect"}]
scoreboard players set @a[tag=SG1v1Arena2,limit=1] 1v1Kill 1
function sg:lobby/1v1/arena2/end