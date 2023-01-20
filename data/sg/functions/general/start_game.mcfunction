tellraw @a [{"text": ""},{"text":"[!] ","color":"aqua","bold": true},{"text":"Start command executed! Game will begin in 10 seconds."}]
scoreboard players operation $countdown countdown = $lobby_countdown options
#check total number of players, warning if more than max
function sg:lobby/countdown
