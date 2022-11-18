gamemode adventure @s
team leave @s
#remove tags
clear @s
effect clear @s
xp set @s 0 points
xp set @s 0 levels
spawnpoint @s -127 48 140
tp @s -126.5 48 140.5
tag @s add SGInitSpawned
tag @s remove SGResetPlayer
tag @s remove WinnerWinnerChickenDinner

#state-based reset
execute if score $state gamestate = $game gamestate run team join Spectator
execute if score $state gamestate = $game gamestate run gamemode spectator
execute if score $state gamestate = $game gamestate run tp @s @e[tag=SGSpectatorSpawnMarker,limit=1]
execute if score $state gamestate = $game gamestate run bossbar set border players @a