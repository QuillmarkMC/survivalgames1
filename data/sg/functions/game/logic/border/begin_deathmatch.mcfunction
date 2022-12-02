scoreboard players set $Timer border 120
execute store result bossbar border max run scoreboard players get $Timer border
#bossbar set border visible true
scoreboard players operation $State border = $Deathmatch border
#function sg:game/logic/border/update
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse record @s ~ ~ ~ 1 0.5
tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The game will end in a tie in 2 minutes!"}]
