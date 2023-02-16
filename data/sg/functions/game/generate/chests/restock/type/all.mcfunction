execute as @e[tag=SGChest] at @s run function sg:game/generate/chests/restock/one
execute positioned -219.5 45.0 115.5 as @e[type=marker,distance=..30,tag=SGCornucopiaChest] run data modify block ~ ~ ~ LootTable set value "sg:rare_chest"

tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"All chests have been restocked!"}]