#called during a game in progress to restock cornucopia chests
execute positioned -219.5 45.0 115.5 as @e[type=marker,tag=SGChest,distance=..30] at @s run function sg:game/generate/chests/restock/restock
execute as @a at @s run playsound minecraft:block.chest.open record @s ~ ~ ~ 0.8 0.8
tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The Cornucopia chests have been restocked!"}]