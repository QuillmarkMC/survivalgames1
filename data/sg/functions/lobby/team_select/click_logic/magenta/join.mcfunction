team join Magenta @s
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Magenta","color": "light_purple"},{"text": " team!"}]
