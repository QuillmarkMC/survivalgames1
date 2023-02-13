team join Random @s
scoreboard players reset @s teamID
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You will be assigned a random team at the start of the match!"}]
