worldborder set 50 1200
scoreboard players set $Timer border 1200
execute store result bossbar border max run scoreboard players get $Timer border
bossbar set border visible true
scoreboard players operation $State border = $Advance border
function sg:game/logic/border/update
#schedule function sg:game/logic/border/shrink 600s