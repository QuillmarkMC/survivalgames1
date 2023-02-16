#check if player has editing permission
execute store success score #Temp lobbySigns if entity @s[tag=Admin]
execute if score $Locked lobbySigns matches 0 run scoreboard players set #Temp lobbySigns 1

execute if score #Temp lobbySigns matches 1 run function sg:lobby/start_logic/interrupt/stop
execute if score #Temp lobbySigns matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"text":"Settings are locked! "},{"hoverEvent":{"action":"show_text","contents":[{"text":"Admins only!","italic":true,"color":"yellow"}]},"clickEvent":{"action":"run_command","value": "/function sg:lobby/settings/actions/unlock/grant_permission"},"text": "Click here","underlined": true,"color": "gold"},{"text": " to give yourself editing permission."}]
