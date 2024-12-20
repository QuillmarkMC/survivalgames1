#kill timer
kill @e[type=item_display,tag=SGCountdownTimer,limit=1]
#kill markers
function sg:game/starting/platform/delay_kill

scoreboard players set $Timer border -1
bossbar set border visible false
schedule clear sg:game/logic/border/update
schedule clear sg:game/logic/border/shrink
schedule clear sg:game/logic/restock/timer
schedule clear sg:game/starting/platform/delay_start
schedule clear sg:game/starting/platform/rise_delay
schedule clear sg:game/starting/final_countdown_schedule
schedule clear sg:game/logic/end/transition

stopsound @a * sg:game.music.countdown

scoreboard players reset * combatTimer
scoreboard players reset * deathDelayTimer
scoreboard players set $countdown countdown 0
scoreboard players set $Heartbeat countdown 0
scoreboard players set $CountdownTimerActivated timers 0

tag @a add SGResetPlayer

function sg:lobby/load
function sg:lobby/markers/delayed_load