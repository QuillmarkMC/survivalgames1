team join Green @s
scoreboard players operation @s teamID = $Team.Green teamID
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"translate": "text.lobby.team_select.join.message1"},{"translate": "text.lobby.team_select.join.green","color": "green"},{"translate": "text.lobby.team_select.join.message2"}]
#only used for random team assignment
scoreboard players set #RandomTeamAssigned teams 1