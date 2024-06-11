scoreboard players operation $Global archeryHighscore = @s archeryHighscore
tellraw @a [{"text": ""},{"text":"[!] ","color":"light_purple","bold": true},{"text":"","extra":[{"selector":"@s"}]},{"translate":"text.lobby.archery.highscore1"},{"score":{"name":"$Global","objective":"archeryHighscore"},"color": "light_purple"},{"translate": "text.lobby.archery.highscore2","color": "white"}]
