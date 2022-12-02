worldborder set 50 600
scoreboard players set $Timer border 600
execute store result bossbar border max run scoreboard players get $Timer border
bossbar set border visible true
scoreboard players operation $State border = $Advance border
function sg:game/logic/border/update
execute as @a at @s run playsound minecraft:entity.wither.spawn record @s ~ ~ ~ 0.75 1
tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The border has begun to shrink!"}]

scoreboard players operation $Restock timers = $restock_chests options
schedule function sg:game/logic/restock/timer 1s