scoreboard players operation $state gamestate = $lobby gamestate
scoreboard players set $Count lobbyCountdown -1
schedule clear sg:lobby/countdown

gamerule fallDamage false
difficulty peaceful

function sg:lobby/team_select/init
function sg:game/logic/border/set_lobby
function sg:lobby/doors/init
function sg:lobby/settings/display/update