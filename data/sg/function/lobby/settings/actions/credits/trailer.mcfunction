tellraw @s [{"text": ""},{"text": "[!] ","color": "light_purple","bold": true},{"translate":"text.lobby.settings.download1"},{"translate":"text.lobby.settings.download2","bold": true,"underlined": true,"color": "yellow","hover_event":{"action":"show_text","value":[{"translate":"text.lobby.settings.download3","italic":true,"color":"yellow"}]},"click_event":{"action":"open_url","url":"https://youtu.be/XX6wobPq9Wk"}},{"translate":"text.lobby.settings.download4"},{"translate": "text.lobby.settings.download5","color": "gray"},{"translate": "text.lobby.settings.trailer6"}]
execute at @s run playsound block.wooden_button.click_on ambient @s ~ ~ ~ 0.75 0.75
