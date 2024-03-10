#check border advance time from lobby
execute unless score $MapSize options matches 1..2 run worldborder set 50 600
execute if score $MapSize options matches 1 run worldborder set 50 450
execute if score $MapSize options matches 2 run worldborder set 50 300
execute unless score $MapSize options matches 1..2 run scoreboard players set $Timer border 600
execute if score $MapSize options matches 1 run scoreboard players set $Timer border 450
execute if score $MapSize options matches 2 run scoreboard players set $Timer border 300

execute store result bossbar border max run scoreboard players get $Timer border
bossbar set border visible true
scoreboard players operation $State border = $Advance border
function sg:game/logic/border/update
execute as @a at @s run playsound minecraft:entity.wither.spawn record @s ~ ~ ~ 0.75 1
tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.border.shrink"}]

#check restock time from lobby
execute unless score $MapSize options matches 1..2 run scoreboard players set $Restock timers 300
execute if score $MapSize options matches 1 run scoreboard players set $Restock timers 360
execute if score $MapSize options matches 2 run scoreboard players set $Restock timers 270
execute unless score $RestockType options matches 2 run schedule function sg:game/logic/restock/timer 1s