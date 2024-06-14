scoreboard players operation $Global 1v1Highscore = @s 1v1Highscore
tellraw @a [{"text": ""},{"text":"[!] ","color":"gray","bold": true},{"text":"","extra":[{"selector":"@s"}]},{"translate":"text.lobby.1v1.highscore1"},{"score":{"name":"$Global","objective":"1v1Highscore"},"color": "yellow"},{"translate": "text.lobby.1v1.highscore2","color": "white"}]
function sg:lobby/1v1/queue/text_display
