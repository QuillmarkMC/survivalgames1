team join Cyan @s
scoreboard players operation @s teamID = $Team.Cyan teamID
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Cyan","color": "dark_aqua"},{"text": " team!"}]
#only used for random team assignment
scoreboard players set #RandomTeamAssigned teams 1