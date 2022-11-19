gamemode adventure @s
team leave @s
clear @s
effect clear @s
advancement grant @s only sg:inv_changed
xp set @s 0 points
xp set @s 0 levels
spawnpoint @s -219 15 128
tp @s -219.5 15.0625 128.5 180.0 12.0
scoreboard players reset @s click
tag @s add SGInitSpawned
tag @s remove SGResetPlayer
tag @s remove WinnerWinnerChickenDinner
tag @s remove SGPlaying

#state-based reset
execute if score $state gamestate = $game gamestate run team join Spectator
execute if score $state gamestate = $game gamestate run gamemode spectator
execute if score $state gamestate = $game gamestate run tp @s @e[tag=SGSpectatorSpawnMarker,limit=1]
execute if score $state gamestate = $game gamestate run bossbar set border players @a