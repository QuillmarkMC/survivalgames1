scoreboard players operation @s archeryHighscore = $CurrentScore archeryVar
tellraw @s [{"text": ""},{"text":"[!] ","color":"light_purple","bold": true},{"text":"Congratulations! You got a new personal best of "},{"score":{"name":"@s","objective":"archeryHighscore"},"color": "light_purple"},{"text": "!","color": "light_purple"}]
execute if score @s archeryHighscore > $Global archeryHighscore run function sg:lobby/archery/gameplay/scores/highscore