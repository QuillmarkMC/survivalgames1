scoreboard players operation @s 1v1Highscore = @s 1v1Killstreak
tellraw @s [{"text": ""},{"text":"[!] ","color":"gray","bold": true},{"translate":"text.lobby.1v1.pb"}]
execute if score @s 1v1Highscore > $Global 1v1Highscore run function sg:lobby/1v1/scores/highscore
