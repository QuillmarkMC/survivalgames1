gamemode spectator
tellraw @s [{"text": ""},{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.safety.respawn1"},{"translate":"text.safety.survival2","underlined": true,"color": "yellow","clickEvent": {"action":"suggest_command","value": "/function sg:general/safety/allow_bypass"},"hoverEvent":{"action":"show_text","contents":[{"translate":"text.safety.survival3","italic":true,"color":"gray"}]}}]
