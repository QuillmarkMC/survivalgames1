title @a times 0 40 20
title @a title "\uE001"

tp @s @e[type=marker,tag=SGArenaRespawn,limit=1]

tag @s remove SGArenaFighter
advancement grant @s only sg:inv_changed
scoreboard players set @s death 0
