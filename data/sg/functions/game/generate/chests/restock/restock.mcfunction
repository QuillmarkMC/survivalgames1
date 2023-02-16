#called during a game in progress to restock chests
execute if score $RestockType options matches 0 run function sg:game/generate/chests/restock/type/cornucopia
execute if score $RestockType options matches 1 run function sg:game/generate/chests/restock/type/all
execute if score $RestockType options matches 0..1 as @a at @s run playsound minecraft:block.chest.open record @s ~ ~ ~ 0.8 0.8
