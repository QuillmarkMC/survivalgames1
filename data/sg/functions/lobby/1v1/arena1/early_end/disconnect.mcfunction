tellraw @a[tag=SG1v1Arena1,limit=1] [{"text": ""},{"text":"[!] ","color":"gray","bold": true},{"text":"Your opponent disconnected, so you have been given the win!"}]
scoreboard players set @a[tag=SG1v1Arena1,limit=1] 1v1Kill 1
function sg:lobby/1v1/arena1/end