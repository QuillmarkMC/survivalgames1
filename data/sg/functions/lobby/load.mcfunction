scoreboard players operation $state gamestate = $lobby gamestate
scoreboard players set $Count lobbyCountdown -1
scoreboard players reset * adminTeleportCooldown
scoreboard players set $Cooldown adminTeleportCooldown 200
schedule clear sg:lobby/countdown

gamerule fallDamage false
gamerule showDeathMessages false
difficulty easy

function sg:lobby/team_select/init
function sg:game/logic/border/set_lobby
function sg:lobby/doors/init
function sg:lobby/settings/display/update
function sg:lobby/arena/init
function sg:lobby/archery/init
function sg:lobby/training/spawn_weapons_rack
function sg:lobby/settings/teleporters/summon
function sg:lobby/1v1/init