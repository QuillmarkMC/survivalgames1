#start grace period
tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.begin1"},{"score":{"name":"$grace_period","objective":"options"}},{"translate":"text.game.begin2"}]
scoreboard players operation $countdown countdown = $grace_period options
function sg:game/starting/grace/countdown
scoreboard players set $Heartbeat countdown 0

#VFX
summon lightning_bolt -219.5 55 115.5
execute as @a at @s run playsound block.anvil.place record @s ~ ~ ~ 0.75

#Unleash the beasts
execute as @e[tag=SGSpawnMarker,type=marker] at @s positioned ~-1 ~11 ~-1 run fill ~3 ~5 ~3 ~ ~ ~ air replace barrier

#assign match IDs to handle reconnecting players
scoreboard players operation @a matchID = $Global matchID

#destroy timer model
kill @e[type=item_display,tag=SGCountdownTimer,limit=1]
scoreboard players set $CountdownTimerActivated timers 0

#bossbar
#border delay based on lobby settings
scoreboard players operation $Timer border = $BorderDelay options
execute store result bossbar border max run scoreboard players get $Timer border
bossbar set border visible true
scoreboard players operation $State border = $Grace border
function sg:game/logic/border/update
execute unless score $BorderDelay.State lobbySigns matches 1..7 run schedule function sg:game/logic/border/shrink 300s
execute if score $BorderDelay.State lobbySigns matches 1 run schedule function sg:game/logic/border/shrink 120s
execute if score $BorderDelay.State lobbySigns matches 2 run schedule function sg:game/logic/border/shrink 30s
execute if score $BorderDelay.State lobbySigns matches 3 run schedule function sg:game/logic/border/shrink 3600s
execute if score $BorderDelay.State lobbySigns matches 4 run schedule function sg:game/logic/border/shrink 2700s
execute if score $BorderDelay.State lobbySigns matches 5 run schedule function sg:game/logic/border/shrink 1800s
execute if score $BorderDelay.State lobbySigns matches 6 run schedule function sg:game/logic/border/shrink 900s
execute if score $BorderDelay.State lobbySigns matches 7 run schedule function sg:game/logic/border/shrink 600s

#schedule chest restock
function sg:game/logic/restock/schedule