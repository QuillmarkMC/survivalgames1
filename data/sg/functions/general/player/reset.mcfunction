gamemode adventure @s
team leave @s
effect clear @s
xp set @s 0 points
xp set @s 0 levels
spawnpoint @s -274 4 115
tp @s @e[type=marker,tag=SGLobbySpawnPosition,limit=1]
scoreboard players reset @s click
scoreboard players reset @s lobbyArenaRespawn
scoreboard players reset @s archeryQueuePosition
scoreboard players reset @s 1v1QueuePosition
scoreboard players reset @s surrender
tag @s add SGInitSpawned
tag @s remove SGResetPlayer
tag @s remove WinnerWinnerChickenDinner
tag @s remove SGPlaying
tag @s remove SGNotSpawned
tag @s remove SGArcheryPlayer
tag @s remove SG1v1Preparing
tag @s remove SG1v1Player1Arena1
tag @s remove SG1v1Player2Arena1
tag @s remove SG1v1Player1Arena2
tag @s remove SG1v1Player2Arena2
tag @s remove SG1v1Arena1
tag @s remove SG1v1Arena2
scoreboard players operation @s inventoryState = $Lobby.Default inventoryState
clear @s
advancement grant @s only sg:inv_changed
#bossbar set archery players @a[tag=SGArcheryPlayer,limit=1]

#state-based reset
execute if score $state gamestate = $game gamestate run team join Spectator
execute if score $state gamestate = $game gamestate run gamemode spectator
execute if score $state gamestate = $game gamestate run tp @s @e[tag=SGSpectatorSpawnMarker,limit=1]
execute if score $state gamestate = $game gamestate run bossbar set border players @a