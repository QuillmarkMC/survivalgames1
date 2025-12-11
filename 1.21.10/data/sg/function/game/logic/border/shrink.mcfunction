#check border advance time from lobby
#yes I know I could use a macro dont @ me
execute unless score $BorderShrink.State lobbySigns matches 1..7 run worldborder set 50 600
execute if score $BorderShrink.State lobbySigns matches 1 run worldborder set 50 450
execute if score $BorderShrink.State lobbySigns matches 2 run worldborder set 50 300
execute if score $BorderShrink.State lobbySigns matches 3 run worldborder set 50 3600
execute if score $BorderShrink.State lobbySigns matches 4 run worldborder set 50 2700
execute if score $BorderShrink.State lobbySigns matches 5 run worldborder set 50 1800
execute if score $BorderShrink.State lobbySigns matches 6 run worldborder set 50 1200
execute if score $BorderShrink.State lobbySigns matches 7 run worldborder set 50 900

scoreboard players operation $Timer border = $BorderShrink options
execute store result bossbar border max run scoreboard players get $Timer border
bossbar set border visible true
scoreboard players operation $State border = $Advance border
function sg:game/logic/border/update
execute as @a at @s run playsound minecraft:entity.wither.spawn record @s ~ ~ ~ 0.75 1
tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.border.shrink"}]
