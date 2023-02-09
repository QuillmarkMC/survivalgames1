team join Yellow @s
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Yellow","color": "yellow"},{"text": " team!"}]
