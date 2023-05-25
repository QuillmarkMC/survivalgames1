scoreboard players operation $Global archeryHighscore = @s archeryHighscore
tellraw @a [{"text": ""},{"text":"[!] ","color":"light_purple","bold": true},{"text":"","extra":[{"selector":"@s"}]},{"text":" just set a new highscore of "},{"score":{"name":"$Global","objective":"archeryHighscore"},"color": "light_purple"},{"text": " in Archery!","color": "white"}]
