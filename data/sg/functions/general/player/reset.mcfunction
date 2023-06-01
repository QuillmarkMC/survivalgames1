gamemode adventure @s
team leave @s
clear @s
effect clear @s
scoreboard players operation @s inventoryState = $Lobby.Default inventoryState
advancement grant @s only sg:inv_changed
xp set @s 0 points
xp set @s 0 levels
spawnpoint @s -274 4 115
tp @s -222.0 15.0625 70.0 0.0 6.7
scoreboard players reset @s click
scoreboard players reset @s lobbyArenaRespawn
scoreboard players reset @s archeryQueuePosition
tag @s add SGInitSpawned
tag @s remove SGResetPlayer
tag @s remove WinnerWinnerChickenDinner
tag @s remove SGPlaying
tag @s remove SGNotSpawned
tag @s remove SGArcheryPlayer
#bossbar set archery players @a[tag=SGArcheryPlayer,limit=1]

#state-based reset
execute if score $state gamestate = $game gamestate run team join Spectator
execute if score $state gamestate = $game gamestate run gamemode spectator
execute if score $state gamestate = $game gamestate run tp @s @e[tag=SGSpectatorSpawnMarker,limit=1]
execute if score $state gamestate = $game gamestate run bossbar set border players @a