team join Magenta @s
scoreboard players operation @s teamID = $Team.Magenta teamID
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Magenta","color": "light_purple"},{"text": " team!"}]
#only used for random team assignment
scoreboard players set #RandomTeamAssigned teams 1