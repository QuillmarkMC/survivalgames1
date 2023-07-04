execute as @e[tag=SGChest] at @s run function sg:game/generate/chests/restock/one
execute if score $LootMode options matches 0 positioned -219.5 45.0 115.5 as @e[type=marker,distance=..30,tag=SGCornucopiaChest] at @s run data modify block ~ ~ ~ LootTable set value "sg:chests/normal/rare_chest"
execute if score $LootMode options matches 1 positioned -219.5 45.0 115.5 as @e[type=marker,distance=..30,tag=SGCornucopiaChest] at @s run data modify block ~ ~ ~ LootTable set value "sg:chests/scarce/rare_chest"
execute if score $LootMode options matches 2 positioned -219.5 45.0 115.5 as @e[type=marker,distance=..30,tag=SGCornucopiaChest] at @s run data modify block ~ ~ ~ LootTable set value "sg:chests/bountiful/rare_chest"

tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"All chests have been restocked!"}]