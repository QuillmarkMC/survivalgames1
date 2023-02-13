team join Gold @s
scoreboard players operation @s teamID = $Team.Gold teamID
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Gold","color": "gold"},{"text": " team!"}]
#only used for random team assignment
scoreboard players set #RandomTeamAssigned teams 1