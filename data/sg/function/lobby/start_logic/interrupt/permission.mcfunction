#check if player has editing permission
execute store success score #Temp lobbySigns if entity @s[tag=Admin]
execute if score $Locked lobbySigns matches 0 run scoreboard players set #Temp lobbySigns 1

execute if score #Temp lobbySigns matches 1 run function sg:lobby/start_logic/interrupt/stop
execute if score #Temp lobbySigns matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"translate":"text.lobby.settings.permission.error1"},{"hover_event":{"action":"show_text","value":[{"translate":"text.lobby.settings.permission.error2","italic":true,"color":"yellow"}]},"click_event":{"action":"run_command","command": "/function sg:lobby/settings/actions/unlock/grant_permission"},"translate": "text.lobby.settings.permission.error3","underlined": true,"color": "gold"},{"translate": "text.lobby.settings.permission.error4"}]
