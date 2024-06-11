tellraw @a [{"text": ""},{"text":"[!] ","color":"aqua","bold": true},{"translate":"text.lobby.start.begin"}]
tellraw @a [{"translate":"text.lobby.start.cancel.prompt2","color":"red","bold": true,"clickEvent": {"action":"run_command","value": "/trigger lobbySigns set 2"},"hoverEvent":{"action":"show_text","contents":[{"translate":"text.lobby.start.cancel.prompt2","italic":true,"color":"gray"}]}}]
scoreboard players operation $Count lobbyCountdown = $lobby_countdown options
execute if score $ReadyNum lobbySigns matches 1 run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.lobby.start.begin.min_player_warning","color":"white","bold": false}]
#solo (check for player cap var)
execute unless score $MaxTeamSize teams matches 2..3 if score $EnforcePlayerCap var matches 1 if score $ReadyNum lobbySigns matches 33.. run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.lobby.start.begin.max_player_warning","color":"white","bold": false}]
#2s or 3s
execute if score $MaxTeamSize teams matches 2..3 if score $ReadyNum lobbySigns matches 33.. run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.lobby.start.begin.max_player_warning","color":"white","bold": false}]

function sg:lobby/countdown