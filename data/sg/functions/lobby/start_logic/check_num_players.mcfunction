#execute store result score $ReadyNum lobbySigns if entity @a[team=!]
execute if score $Count lobbyCountdown matches 0.. run scoreboard players set $ReadyNum lobbySigns -1
#execute if score $ReadyNum lobbySigns matches 1.. run function sg:lobby/start_logic/begin
function sg:lobby/start_logic/begin
#execute if score $ReadyNum lobbySigns matches 0 run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"text":"At least one team must be populated to start the game!","color":"white","bold": false}]
execute if score $ReadyNum lobbySigns matches -1 run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"text":"Start sequence has already begun!","color":"white","bold": false}]
scoreboard players reset $ReadyNum lobbySigns