#kill timer
function timer_survivalgames:remove/all
#kill markers
function sg:game/starting/platform/delay_kill

scoreboard players reset * combatTimer
scoreboard players set $countdown countdown 0
scoreboard players set $Heartbeat countdown 0

tag @a add SGResetPlayer

function sg:lobby/load