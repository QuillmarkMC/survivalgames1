team join Dark_Blue @s
scoreboard players operation @s teamID = $Team.Dark_Blue teamID
function sg:lobby/team_select/update_count
tellraw @s [{"text": ""},{"text":"[!] ","color":"#ed771c","bold": true},{"translate": "text.lobby.team_select.join.message1"},{"translate": "text.lobby.team_select.join.dark_blue","color": "dark_blue"},{"translate": "text.lobby.team_select.join.message2"}]
#only used for random team assignment
scoreboard players set #RandomTeamAssigned teams 1