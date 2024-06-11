#if someone gets stuck in the black box of death, tp them to spawn
scoreboard players add @s lobbyRespawnFailsafe 1
execute if score @s lobbyRespawnFailsafe >= $Length lobbyRespawnFailsafe run scoreboard players operation @s respawnLocation = $Lobby.Default respawnLocation
execute if score @s lobbyRespawnFailsafe >= $Length lobbyRespawnFailsafe run scoreboard players set @s lobbyArenaRespawn 0