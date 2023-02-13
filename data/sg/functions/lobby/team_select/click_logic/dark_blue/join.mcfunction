team join Dark_Blue @s
scoreboard players operation @s teamID = $Team.Dark_Blue teamID
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"text": "You joined the "},{"text": "Dark Blue","color": "dark_blue"},{"text": " team!"}]
#only used for random team assignment
scoreboard players set #RandomTeamAssigned teams 1