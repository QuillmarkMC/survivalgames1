team join Black @s
scoreboard players operation @s teamID = $Team.Black teamID
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Black","color": "#000000"},{"text": " team!"}]
#only used for random team assignment
scoreboard players set #RandomTeamAssigned teams 1