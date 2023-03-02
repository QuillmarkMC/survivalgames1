#start grace period
tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The barriers have dropped! A "},{"score":{"name":"$grace_period","objective":"options"}},{"text":" second grace period has been applied!"}]
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
function timer_survivalgames:remove/all

#bossbar
#border delay based on lobby settings
execute unless score $MapSize options matches 1..2 run scoreboard players set $Timer border 300
execute if score $MapSize options matches 1 run scoreboard players set $Timer border 120
execute if score $MapSize options matches 2 run scoreboard players set $Timer border 30
execute store result bossbar border max run scoreboard players get $Timer border
bossbar set border visible true
scoreboard players operation $State border = $Grace border
function sg:game/logic/border/update
execute unless score $MapSize options matches 1..2 run schedule function sg:game/logic/border/shrink 300s
execute if score $MapSize options matches 1 run schedule function sg:game/logic/border/shrink 120s
execute if score $MapSize options matches 2 run schedule function sg:game/logic/border/shrink 30s
