tellraw @a [{"text": ""},{"text":"[!] ","color":"aqua","bold": true},{"text":"Start countdown has begun! Game will begin in 10 seconds."}]
tellraw @a [{"text":"[Cancel Start]","color":"red","bold": true,"clickEvent": {"action":"run_command","value": "/trigger lobbySigns set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to cancel start countdown","italic":true,"color":"gray"}]}}]
scoreboard players operation $Count lobbyCountdown = $lobby_countdown options
#check total number of players, warning if more than max
function sg:lobby/countdown