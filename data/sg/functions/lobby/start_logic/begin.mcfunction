tellraw @a [{"text": ""},{"text":"[!] ","color":"aqua","bold": true},{"text":"Start countdown has begun! Game will begin in 10 seconds."}]
tellraw @a [{"text":"[Cancel Start]","color":"red","bold": true,"clickEvent": {"action":"run_command","value": "/trigger lobbySigns set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to cancel start countdown","italic":true,"color":"gray"}]}}]
scoreboard players operation $Count lobbyCountdown = $lobby_countdown options
execute if score $ReadyNum lobbySigns matches 33.. run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"text":"Warning! Maximum number of players is 32! Excess players will be forced to spectate!","color":"white","bold": false}]

function sg:lobby/countdown