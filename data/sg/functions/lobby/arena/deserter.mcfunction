tag @s remove SGArenaFighter
function sg:lobby/effects/give
scoreboard players reset @s go_to_sleep
scoreboard players operation @s inventoryState = $Lobby.Default inventoryState
advancement grant @s only sg:inv_changed