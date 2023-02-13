team join Dark_Gray @s
scoreboard players operation @s teamID = $Team.Dark_Gray teamID
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Dark Gray","color": "dark_gray"},{"text": " team!"}]
#only used for random team assignment
scoreboard players set #RandomTeamAssigned teams 1