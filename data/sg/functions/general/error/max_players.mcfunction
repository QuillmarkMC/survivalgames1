tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"translate": "text.lobby.team_select.error.max_players"}]
team leave @s
scoreboard players reset @s teamID
tag @s remove SGPlaying
function sg:game/spawning/spectator/join