title @s times 0 40 20
title @s title "\uE001"

scoreboard players set @s lobbyArenaRespawn 5

tellraw @a [{"text":"","extra":[{"selector":"@s"}]},{"text": " fainted"}]

tag @s remove SGArenaFighter
advancement grant @s only sg:inv_changed
scoreboard players set @s death 0
