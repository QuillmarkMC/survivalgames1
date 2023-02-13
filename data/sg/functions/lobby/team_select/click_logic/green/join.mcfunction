team join Green @s
scoreboard players operation @s teamID = $Team.Green teamID
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Green","color": "green"},{"text": " team!"}]
#only used for random team assignment
scoreboard players set #RandomTeamAssigned teams 1