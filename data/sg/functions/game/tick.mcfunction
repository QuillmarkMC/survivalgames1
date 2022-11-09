#Death check
execute as @a if score @s death matches 1.. run function sg:game/logic/death
execute as @a if score @s death matches 1.. run scoreboard players set @s death 0