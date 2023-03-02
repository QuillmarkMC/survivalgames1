execute positioned -219.5 45.0 115.5 as @e[type=marker,distance=..30,tag=SGCommonChest] at @s run data modify block ~ ~ ~ LootTable set value "sg:common_chest"
execute positioned -219.5 45.0 115.5 as @e[type=marker,distance=..30,tag=SGCornucopiaChest] at @s run data modify block ~ ~ ~ LootTable set value "sg:rare_chest"

tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The Cornucopia chests have been restocked!"}]