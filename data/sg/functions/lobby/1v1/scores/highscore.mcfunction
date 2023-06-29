scoreboard players operation $Global 1v1Highscore = @s 1v1Highscore
tellraw @a [{"text": ""},{"text":"[!] ","color":"gray","bold": true},{"text":"","extra":[{"selector":"@s"}]},{"text":" just set a new highscore of "},{"score":{"name":"$Global","objective":"1v1Highscore"},"color": "yellow"},{"text": " wins in 1v1 duels!","color": "white"}]
function sg:lobby/1v1/queue/text_display
