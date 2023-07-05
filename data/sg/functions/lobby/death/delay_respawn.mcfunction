#this function is required because otherwise glitchy respawn behavior would sometimes trap people in an unintended location
scoreboard players remove @s lobbyArenaRespawn 1

execute if score @s lobbyArenaRespawn matches ..0 if score @s respawnLocation = $Lobby.Default respawnLocation run tp @s @e[type=marker,tag=SGLobbySpawnPosition,limit=1,sort=random]
execute if score @s lobbyArenaRespawn matches ..0 if score @s respawnLocation = $Lobby.Arena respawnLocation run tp @s @e[type=marker,tag=SGArenaRespawn,limit=1,sort=random]
execute if score @s lobbyArenaRespawn matches ..0 if score @s respawnLocation = $Lobby.1v1 respawnLocation run function sg:lobby/1v1/death/respawn
execute if score @s lobbyArenaRespawn matches ..0 run scoreboard players reset @s lobbyRespawnFailsafe
execute if score @s lobbyArenaRespawn matches ..0 run scoreboard players reset @s lobbyArenaRespawn