#kill timer
function timer_survivalgames:remove/all
#kill markers
function sg:game/starting/platform/delay_kill
schedule clear sg:game/starting/platform/rise_delay

bossbar set border visible false
schedule clear sg:game/logic/border/update
schedule clear sg:game/logic/border/shrink

scoreboard players reset * combatTimer
scoreboard players set $countdown countdown 0
scoreboard players set $Heartbeat countdown 0

tag @a add SGResetPlayer

function sg:lobby/load