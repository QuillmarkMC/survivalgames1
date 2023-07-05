title @s times 0 40 20
title @s title "\uE001"

scoreboard players set @s lobbyArenaRespawn 5
scoreboard players reset @s lobbyRespawnFailsafe
function sg:lobby/effects/give

tellraw @a [{"text":"","extra":[{"selector":"@s"}]},{"text": " fainted"}]

scoreboard players operation @s respawnLocation = $Lobby.Default respawnLocation
execute if entity @s[tag=SGArenaFighter] run function sg:lobby/arena/death/on_death
execute if entity @s[tag=SG1v1Arena1] run function sg:lobby/1v1/death/on_death
execute if entity @s[tag=SG1v1Arena2] run function sg:lobby/1v1/death/on_death

scoreboard players operation @s inventoryState = $Lobby.Default inventoryState
advancement grant @s only sg:inv_changed
scoreboard players set @s death 0
