tag @s add SGArenaFighter
scoreboard players enable @s go_to_sleep
scoreboard players operation @s inventoryState = $Lobby.ArenaFighter inventoryState
advancement grant @s only sg:inv_changed
execute at @s run playsound minecraft:item.goat_horn.sound.0 ambient @a[predicate=sg:lobby/arena_large] ~ ~ ~ 10
function sg:lobby/effects/clear