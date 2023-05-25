tag @s add SGArenaFighter
scoreboard players operation @s inventoryState = $Lobby.ArenaFighter inventoryState
advancement grant @s only sg:inv_changed
execute at @s run playsound minecraft:item.goat_horn.sound.0 ambient @a[predicate=sg:lobby/arena_large] ~ ~ ~ 10
effect clear @s regeneration
effect clear @s resistance
effect clear @s weakness