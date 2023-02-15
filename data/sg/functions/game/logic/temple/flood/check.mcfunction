execute if entity @s[predicate=sg:temple/full] unless score @s temple matches 1.. run function sg:game/logic/temple/flood/warn
scoreboard players reset @s openChest