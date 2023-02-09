team join Purple @s
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Purple","color": "dark_purple"},{"text": " team!"}]
