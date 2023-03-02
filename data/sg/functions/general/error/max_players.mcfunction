tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"text":"There are too many players! You have been moved to the spectators."}]
team leave @s
scoreboard players reset @s teamID
tag @s remove SGPlaying
function sg:game/spawning/spectator/join