scoreboard players operation $state gamestate = $lobby gamestate
scoreboard players set $Count lobbyCountdown -1
scoreboard players reset * adminTeleportCooldown
scoreboard players set $Cooldown adminTeleportCooldown 200
scoreboard players set $EntityLoad lobbyVar 0
scoreboard players set $EntityLoadTimer lobbyVar 0
schedule clear sg:lobby/countdown

gamerule fallDamage false
gamerule showDeathMessages false
gamerule naturalRegeneration true
difficulty easy

function sg:game/logic/border/set_lobby
function sg:general/teams/friendly_fire_on
#the rest of the inits are in lobby/markers/delayed_load