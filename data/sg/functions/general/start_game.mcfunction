tellraw @a [{"text": ""},{"text":"[!] ","color":"aqua","bold": true},{"text":"Start command executed! Game will begin in 10 seconds."}]
scoreboard players operation $countdown countdown = $lobby_countdown options
function sg:lobby/countdown
