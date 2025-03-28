tag @s add Bypass_Safety
tellraw @s [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.safety.bypass.allow"}]
tellraw @s [{"text": ""},{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.safety.bypass.warning1"},{"translate":"text.safety.bypass.warning2","underlined": true,"color": "yellow","click_event": {"action":"suggest_command","command": "/function sg:general/safety/remove_bypass"},"hover_event":{"action":"show_text","value":[{"translate":"text.safety.survival3","italic":true,"color":"gray"}]}},{"translate":"text.safety.bypass.warning3"}]
execute at @s run playsound block.note_block.pling record @s
