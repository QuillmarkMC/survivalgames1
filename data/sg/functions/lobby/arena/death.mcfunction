title @s times 0 40 20
title @s title "\uE001"

tp @s @e[type=marker,tag=SGArenaRespawn,limit=1,sort=random]

tellraw @a [{"text":"","extra":[{"selector":"@s"}]},{"text": " fainted"}]

tag @s remove SGArenaFighter
advancement grant @s only sg:inv_changed
scoreboard players set @s death 0