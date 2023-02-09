scoreboard players operation $state gamestate = $lobby gamestate

#add logic to set settings defaults
scoreboard players set $MaxTeamSize teams 2

function sg:lobby/team_select/init
function sg:game/logic/border/set_lobby